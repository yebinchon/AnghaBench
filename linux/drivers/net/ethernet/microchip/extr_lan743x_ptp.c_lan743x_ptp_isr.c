
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_ptp {int ptp_clock; } ;
struct lan743x_adapter {int netdev; struct lan743x_ptp ptp; } ;


 int INT_BIT_1588_ ;
 int INT_EN_CLR ;
 int INT_EN_SET ;
 int PTP_INT_BIT_TIMER_A_ ;
 int PTP_INT_BIT_TIMER_B_ ;
 int PTP_INT_BIT_TX_SWTS_ERR_ ;
 int PTP_INT_BIT_TX_TS_ ;
 int PTP_INT_EN_SET ;
 int PTP_INT_STS ;
 int drv ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int netif_err (struct lan743x_adapter*,int ,int ,char*) ;
 int ptp_schedule_worker (int ,int ) ;

void lan743x_ptp_isr(void *context)
{
 struct lan743x_adapter *adapter = (struct lan743x_adapter *)context;
 struct lan743x_ptp *ptp = ((void*)0);
 int enable_flag = 1;
 u32 ptp_int_sts = 0;

 ptp = &adapter->ptp;

 lan743x_csr_write(adapter, INT_EN_CLR, INT_BIT_1588_);

 ptp_int_sts = lan743x_csr_read(adapter, PTP_INT_STS);
 ptp_int_sts &= lan743x_csr_read(adapter, PTP_INT_EN_SET);

 if (ptp_int_sts & PTP_INT_BIT_TX_TS_) {
  ptp_schedule_worker(ptp->ptp_clock, 0);
  enable_flag = 0;
 }
 if (ptp_int_sts & PTP_INT_BIT_TX_SWTS_ERR_) {
  netif_err(adapter, drv, adapter->netdev,
     "PTP TX Software Timestamp Error\n");

  lan743x_csr_write(adapter, PTP_INT_STS,
      PTP_INT_BIT_TX_SWTS_ERR_);
 }
 if (ptp_int_sts & PTP_INT_BIT_TIMER_B_) {

  lan743x_csr_write(adapter, PTP_INT_STS,
      PTP_INT_BIT_TIMER_B_);
 }
 if (ptp_int_sts & PTP_INT_BIT_TIMER_A_) {

  lan743x_csr_write(adapter, PTP_INT_STS,
      PTP_INT_BIT_TIMER_A_);
 }

 if (enable_flag) {

  lan743x_csr_write(adapter, INT_EN_SET, INT_BIT_1588_);
 }
}
