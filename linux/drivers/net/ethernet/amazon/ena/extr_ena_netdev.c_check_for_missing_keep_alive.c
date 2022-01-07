
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wd_expired; } ;
struct ena_adapter {scalar_t__ keep_alive_timeout; scalar_t__ last_keep_alive_jiffies; int flags; int reset_reason; int syncp; TYPE_1__ dev_stats; int netdev; int wd_state; } ;


 int ENA_FLAG_TRIGGER_RESET ;
 scalar_t__ ENA_HW_HINTS_NO_TIMEOUT ;
 int ENA_REGS_RESET_KEEP_ALIVE_TO ;
 int drv ;
 int netif_err (struct ena_adapter*,int ,int ,char*) ;
 unsigned long round_jiffies (scalar_t__) ;
 int set_bit (int ,int *) ;
 int time_is_before_jiffies (unsigned long) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void check_for_missing_keep_alive(struct ena_adapter *adapter)
{
 unsigned long keep_alive_expired;

 if (!adapter->wd_state)
  return;

 if (adapter->keep_alive_timeout == ENA_HW_HINTS_NO_TIMEOUT)
  return;

 keep_alive_expired = round_jiffies(adapter->last_keep_alive_jiffies +
        adapter->keep_alive_timeout);
 if (unlikely(time_is_before_jiffies(keep_alive_expired))) {
  netif_err(adapter, drv, adapter->netdev,
     "Keep alive watchdog timeout.\n");
  u64_stats_update_begin(&adapter->syncp);
  adapter->dev_stats.wd_expired++;
  u64_stats_update_end(&adapter->syncp);
  adapter->reset_reason = ENA_REGS_RESET_KEEP_ALIVE_TO;
  set_bit(ENA_FLAG_TRIGGER_RESET, &adapter->flags);
 }
}
