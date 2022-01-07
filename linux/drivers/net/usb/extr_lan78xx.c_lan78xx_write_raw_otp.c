
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct lan78xx_net {int net; } ;


 int EIO ;
 unsigned long HZ ;
 int OTP_ADDR1 ;
 int OTP_ADDR1_15_11 ;
 int OTP_ADDR2 ;
 int OTP_ADDR2_10_3 ;
 int OTP_CMD_GO ;
 int OTP_CMD_GO_GO_ ;
 int OTP_PRGM_DATA ;
 int OTP_PRGM_MODE ;
 int OTP_PRGM_MODE_BYTE_ ;
 int OTP_PWR_DN ;
 int OTP_PWR_DN_PWRDN_N_ ;
 int OTP_STATUS ;
 int OTP_STATUS_BUSY_ ;
 int OTP_TST_CMD ;
 int OTP_TST_CMD_PRGVRFY_ ;
 unsigned long jiffies ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int*) ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int) ;
 int netdev_warn (int ,char*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int lan78xx_write_raw_otp(struct lan78xx_net *dev, u32 offset,
     u32 length, u8 *data)
{
 int i;
 int ret;
 u32 buf;
 unsigned long timeout;

 ret = lan78xx_read_reg(dev, OTP_PWR_DN, &buf);

 if (buf & OTP_PWR_DN_PWRDN_N_) {

  ret = lan78xx_write_reg(dev, OTP_PWR_DN, 0);

  timeout = jiffies + HZ;
  do {
   udelay(1);
   ret = lan78xx_read_reg(dev, OTP_PWR_DN, &buf);
   if (time_after(jiffies, timeout)) {
    netdev_warn(dev->net,
         "timeout on OTP_PWR_DN completion");
    return -EIO;
   }
  } while (buf & OTP_PWR_DN_PWRDN_N_);
 }


 ret = lan78xx_write_reg(dev, OTP_PRGM_MODE, OTP_PRGM_MODE_BYTE_);

 for (i = 0; i < length; i++) {
  ret = lan78xx_write_reg(dev, OTP_ADDR1,
     ((offset + i) >> 8) & OTP_ADDR1_15_11);
  ret = lan78xx_write_reg(dev, OTP_ADDR2,
     ((offset + i) & OTP_ADDR2_10_3));
  ret = lan78xx_write_reg(dev, OTP_PRGM_DATA, data[i]);
  ret = lan78xx_write_reg(dev, OTP_TST_CMD, OTP_TST_CMD_PRGVRFY_);
  ret = lan78xx_write_reg(dev, OTP_CMD_GO, OTP_CMD_GO_GO_);

  timeout = jiffies + HZ;
  do {
   udelay(1);
   ret = lan78xx_read_reg(dev, OTP_STATUS, &buf);
   if (time_after(jiffies, timeout)) {
    netdev_warn(dev->net,
         "Timeout on OTP_STATUS completion");
    return -EIO;
   }
  } while (buf & OTP_STATUS_BUSY_);
 }

 return 0;
}
