
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait; } ;
struct mwifiex_adapter {int hs_activate_wait_q; TYPE_1__ cmd_wait_q; int devdump_timer; int wakeup_timer; } ;


 int del_timer (int *) ;
 int del_timer_sync (int *) ;
 int mwifiex_cancel_all_pending_cmd (struct mwifiex_adapter*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
mwifiex_adapter_cleanup(struct mwifiex_adapter *adapter)
{
 del_timer(&adapter->wakeup_timer);
 del_timer_sync(&adapter->devdump_timer);
 mwifiex_cancel_all_pending_cmd(adapter);
 wake_up_interruptible(&adapter->cmd_wait_q.wait);
 wake_up_interruptible(&adapter->hs_activate_wait_q);
}
