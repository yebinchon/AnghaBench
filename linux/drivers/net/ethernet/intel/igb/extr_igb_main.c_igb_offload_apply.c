
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int dummy; } ;
typedef int s32 ;


 int enable_fqtss (struct igb_adapter*,int) ;
 int igb_config_tx_modes (struct igb_adapter*,int ) ;
 int is_any_cbs_enabled (struct igb_adapter*) ;
 int is_any_txtime_enabled (struct igb_adapter*) ;
 int is_fqtss_enabled (struct igb_adapter*) ;

__attribute__((used)) static void igb_offload_apply(struct igb_adapter *adapter, s32 queue)
{
 if (!is_fqtss_enabled(adapter)) {
  enable_fqtss(adapter, 1);
  return;
 }

 igb_config_tx_modes(adapter, queue);

 if (!is_any_cbs_enabled(adapter) && !is_any_txtime_enabled(adapter))
  enable_fqtss(adapter, 0);
}
