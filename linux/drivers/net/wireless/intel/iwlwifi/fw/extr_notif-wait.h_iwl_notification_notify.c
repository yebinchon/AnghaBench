
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_notif_wait_data {int notif_waitq; } ;


 int wake_up_all (int *) ;

__attribute__((used)) static inline void
iwl_notification_notify(struct iwl_notif_wait_data *notif_data)
{
 wake_up_all(&notif_data->notif_waitq);
}
