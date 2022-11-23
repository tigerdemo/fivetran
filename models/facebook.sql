with final as (
    SELECT
        id, 
        category,
        app_id,
        birthday,
        emails,
        COALESCE(hometown,'Not given') AS hometown,
        username,
        _fivetran_deleted,
        _fivetran_synced
    from facebook_pages.page
)

select * from final