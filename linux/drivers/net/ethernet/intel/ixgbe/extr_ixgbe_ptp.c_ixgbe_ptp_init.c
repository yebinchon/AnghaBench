
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int state; int ptp_tx_work; int tmreg_lock; } ;


 int INIT_WORK (int *,int ) ;
 int __IXGBE_PTP_RUNNING ;
 scalar_t__ ixgbe_ptp_create_clock (struct ixgbe_adapter*) ;
 int ixgbe_ptp_reset (struct ixgbe_adapter*) ;
 int ixgbe_ptp_tx_hwtstamp_work ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

void ixgbe_ptp_init(struct ixgbe_adapter *adapter)
{




 spin_lock_init(&adapter->tmreg_lock);


 if (ixgbe_ptp_create_clock(adapter))
  return;


 INIT_WORK(&adapter->ptp_tx_work, ixgbe_ptp_tx_hwtstamp_work);


 ixgbe_ptp_reset(adapter);


 set_bit(__IXGBE_PTP_RUNNING, &adapter->state);

 return;
}
