
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int netdev; } ;


 int EIO ;
 unsigned long HZ ;
 int OTP_STATUS ;
 int OTP_STATUS_BUSY_ ;
 int drv ;
 unsigned long jiffies ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int netif_warn (struct lan743x_adapter*,int ,int ,char*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int lan743x_otp_wait_till_not_busy(struct lan743x_adapter *adapter)
{
 unsigned long timeout;
 u32 reg_val;

 timeout = jiffies + HZ;
 do {
  if (time_after(jiffies, timeout)) {
   netif_warn(adapter, drv, adapter->netdev,
       "Timeout on OTP_STATUS completion\n");
   return -EIO;
  }
  udelay(1);
  reg_val = lan743x_csr_read(adapter, OTP_STATUS);
 } while (reg_val & OTP_STATUS_BUSY_);

 return 0;
}
