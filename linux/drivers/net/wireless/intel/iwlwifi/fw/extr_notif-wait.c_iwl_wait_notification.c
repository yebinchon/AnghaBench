
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_notification_wait {scalar_t__ aborted; scalar_t__ triggered; } ;
struct iwl_notif_wait_data {int notif_waitq; } ;


 int EIO ;
 int ETIMEDOUT ;
 int iwl_remove_notification (struct iwl_notif_wait_data*,struct iwl_notification_wait*) ;
 int wait_event_timeout (int ,int,unsigned long) ;

int iwl_wait_notification(struct iwl_notif_wait_data *notif_wait,
     struct iwl_notification_wait *wait_entry,
     unsigned long timeout)
{
 int ret;

 ret = wait_event_timeout(notif_wait->notif_waitq,
     wait_entry->triggered || wait_entry->aborted,
     timeout);

 iwl_remove_notification(notif_wait, wait_entry);

 if (wait_entry->aborted)
  return -EIO;


 if (ret <= 0)
  return -ETIMEDOUT;
 return 0;
}
