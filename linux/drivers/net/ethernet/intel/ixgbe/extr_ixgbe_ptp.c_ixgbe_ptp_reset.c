
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int (* ptp_setup_sdp ) (struct ixgbe_adapter*) ;int last_overflow_check; int tmreg_lock; int hw_cc; int hw_tc; int tstamp_config; struct ixgbe_hw hw; } ;


 scalar_t__ ixgbe_mac_82598EB ;
 int ixgbe_ptp_set_timestamp_mode (struct ixgbe_adapter*,int *) ;
 int ixgbe_ptp_start_cyclecounter (struct ixgbe_adapter*) ;
 int jiffies ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ixgbe_adapter*) ;
 int timecounter_init (int *,int *,int ) ;

void ixgbe_ptp_reset(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 unsigned long flags;


 ixgbe_ptp_set_timestamp_mode(adapter, &adapter->tstamp_config);


 if (hw->mac.type == ixgbe_mac_82598EB)
  return;

 ixgbe_ptp_start_cyclecounter(adapter);

 spin_lock_irqsave(&adapter->tmreg_lock, flags);
 timecounter_init(&adapter->hw_tc, &adapter->hw_cc,
    ktime_to_ns(ktime_get_real()));
 spin_unlock_irqrestore(&adapter->tmreg_lock, flags);

 adapter->last_overflow_check = jiffies;




 if (adapter->ptp_setup_sdp)
  adapter->ptp_setup_sdp(adapter);
}
