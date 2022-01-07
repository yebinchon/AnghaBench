
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int ptp_tx_work; int (* ptp_setup_sdp ) (struct ixgbe_adapter*) ;int flags2; int state; } ;


 int IXGBE_FLAG2_PTP_PPS_ENABLED ;
 int __IXGBE_PTP_RUNNING ;
 int cancel_work_sync (int *) ;
 int ixgbe_ptp_clear_tx_timestamp (struct ixgbe_adapter*) ;
 int stub1 (struct ixgbe_adapter*) ;
 int test_and_clear_bit (int ,int *) ;

void ixgbe_ptp_suspend(struct ixgbe_adapter *adapter)
{

 if (!test_and_clear_bit(__IXGBE_PTP_RUNNING, &adapter->state))
  return;

 adapter->flags2 &= ~IXGBE_FLAG2_PTP_PPS_ENABLED;
 if (adapter->ptp_setup_sdp)
  adapter->ptp_setup_sdp(adapter);


 cancel_work_sync(&adapter->ptp_tx_work);
 ixgbe_ptp_clear_tx_timestamp(adapter);
}
