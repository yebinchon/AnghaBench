
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int PTP_LATENCY ;
 int PTP_LATENCY_RX_SET_ (int) ;
 int PTP_LATENCY_TX_SET_ (int) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;

void lan743x_ptp_update_latency(struct lan743x_adapter *adapter,
    u32 link_speed)
{
 switch (link_speed) {
 case 10:
  lan743x_csr_write(adapter, PTP_LATENCY,
      PTP_LATENCY_TX_SET_(0) |
      PTP_LATENCY_RX_SET_(0));
  break;
 case 100:
  lan743x_csr_write(adapter, PTP_LATENCY,
      PTP_LATENCY_TX_SET_(181) |
      PTP_LATENCY_RX_SET_(594));
  break;
 case 1000:
  lan743x_csr_write(adapter, PTP_LATENCY,
      PTP_LATENCY_TX_SET_(30) |
      PTP_LATENCY_RX_SET_(525));
  break;
 }
}
