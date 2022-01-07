
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int (* card_reset ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {TYPE_1__ if_ops; int hw_status; } ;


 int ERROR ;
 int MWIFIEX_HW_STATUS_RESET ;
 struct mwifiex_adapter* adapter ;
 struct mwifiex_adapter* from_timer (int ,struct timer_list*,int ) ;
 int mwifiex_cancel_all_pending_cmd (struct mwifiex_adapter*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int stub1 (struct mwifiex_adapter*) ;
 int wakeup_timer ;

__attribute__((used)) static void wakeup_timer_fn(struct timer_list *t)
{
 struct mwifiex_adapter *adapter = from_timer(adapter, t, wakeup_timer);

 mwifiex_dbg(adapter, ERROR, "Firmware wakeup failed\n");
 adapter->hw_status = MWIFIEX_HW_STATUS_RESET;
 mwifiex_cancel_all_pending_cmd(adapter);

 if (adapter->if_ops.card_reset)
  adapter->if_ops.card_reset(adapter);
}
