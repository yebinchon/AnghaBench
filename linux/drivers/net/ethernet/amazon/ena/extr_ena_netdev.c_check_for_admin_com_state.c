
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int admin_q_pause; } ;
struct ena_adapter {int flags; int reset_reason; int syncp; TYPE_1__ dev_stats; int netdev; int ena_dev; } ;


 int ENA_FLAG_TRIGGER_RESET ;
 int ENA_REGS_RESET_ADMIN_TO ;
 int drv ;
 int ena_com_get_admin_running_state (int ) ;
 int netif_err (struct ena_adapter*,int ,int ,char*) ;
 int set_bit (int ,int *) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void check_for_admin_com_state(struct ena_adapter *adapter)
{
 if (unlikely(!ena_com_get_admin_running_state(adapter->ena_dev))) {
  netif_err(adapter, drv, adapter->netdev,
     "ENA admin queue is not in running state!\n");
  u64_stats_update_begin(&adapter->syncp);
  adapter->dev_stats.admin_q_pause++;
  u64_stats_update_end(&adapter->syncp);
  adapter->reset_reason = ENA_REGS_RESET_ADMIN_TO;
  set_bit(ENA_FLAG_TRIGGER_RESET, &adapter->flags);
 }
}
