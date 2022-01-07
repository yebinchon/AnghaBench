
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_notification_wait {int list; } ;
struct iwl_notif_wait_data {int notif_wait_lock; } ;


 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iwl_remove_notification(struct iwl_notif_wait_data *notif_wait,
        struct iwl_notification_wait *wait_entry)
{
 spin_lock_bh(&notif_wait->notif_wait_lock);
 list_del(&wait_entry->list);
 spin_unlock_bh(&notif_wait->notif_wait_lock);
}
