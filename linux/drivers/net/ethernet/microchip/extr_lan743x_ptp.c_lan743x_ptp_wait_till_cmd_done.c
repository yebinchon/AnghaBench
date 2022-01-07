
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int netdev; } ;


 int PTP_CMD_CTL ;
 int drv ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int netif_err (struct lan743x_adapter*,int ,int ,char*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void lan743x_ptp_wait_till_cmd_done(struct lan743x_adapter *adapter,
        u32 bit_mask)
{
 int timeout = 1000;
 u32 data = 0;

 while (timeout &&
        (data = (lan743x_csr_read(adapter, PTP_CMD_CTL) &
        bit_mask))) {
  usleep_range(1000, 20000);
  timeout--;
 }
 if (data) {
  netif_err(adapter, drv, adapter->netdev,
     "timeout waiting for cmd to be done, cmd = 0x%08X\n",
     bit_mask);
 }
}
