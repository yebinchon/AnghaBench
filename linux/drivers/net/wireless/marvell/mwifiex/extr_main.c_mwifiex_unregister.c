
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cleanup_if ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {size_t priv_num; size_t n_matches; struct mwifiex_adapter* regd; struct mwifiex_adapter* nd_info; struct mwifiex_adapter** matches; struct mwifiex_adapter** priv; int cmd_timer; TYPE_1__ if_ops; } ;
typedef size_t s32 ;


 int del_timer_sync (int *) ;
 int kfree (struct mwifiex_adapter*) ;
 int mwifiex_free_curr_bcn (struct mwifiex_adapter*) ;
 int stub1 (struct mwifiex_adapter*) ;

__attribute__((used)) static int mwifiex_unregister(struct mwifiex_adapter *adapter)
{
 s32 i;

 if (adapter->if_ops.cleanup_if)
  adapter->if_ops.cleanup_if(adapter);

 del_timer_sync(&adapter->cmd_timer);


 for (i = 0; i < adapter->priv_num; i++) {
  if (adapter->priv[i]) {
   mwifiex_free_curr_bcn(adapter->priv[i]);
   kfree(adapter->priv[i]);
  }
 }

 if (adapter->nd_info) {
  for (i = 0 ; i < adapter->nd_info->n_matches ; i++)
   kfree(adapter->nd_info->matches[i]);
  kfree(adapter->nd_info);
  adapter->nd_info = ((void*)0);
 }

 kfree(adapter->regd);

 kfree(adapter);
 return 0;
}
