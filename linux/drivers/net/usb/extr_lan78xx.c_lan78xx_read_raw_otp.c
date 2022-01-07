
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
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
 int OTP_FUNC_CMD ;
 int OTP_FUNC_CMD_READ_ ;
 int OTP_PWR_DN ;
 int OTP_PWR_DN_PWRDN_N_ ;
 int OTP_RD_DATA ;
 int OTP_STATUS ;
 int OTP_STATUS_BUSY_ ;
 unsigned long jiffies ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int*) ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int) ;
 int netdev_warn (int ,char*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lan78xx_read_raw_otp(struct lan78xx_net *dev, u32 offset,
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
   usleep_range(1, 10);
   ret = lan78xx_read_reg(dev, OTP_PWR_DN, &buf);
   if (time_after(jiffies, timeout)) {
    netdev_warn(dev->net,
         "timeout on OTP_PWR_DN");
    return -EIO;
   }
  } while (buf & OTP_PWR_DN_PWRDN_N_);
 }

 for (i = 0; i < length; i++) {
  ret = lan78xx_write_reg(dev, OTP_ADDR1,
     ((offset + i) >> 8) & OTP_ADDR1_15_11);
  ret = lan78xx_write_reg(dev, OTP_ADDR2,
     ((offset + i) & OTP_ADDR2_10_3));

  ret = lan78xx_write_reg(dev, OTP_FUNC_CMD, OTP_FUNC_CMD_READ_);
  ret = lan78xx_write_reg(dev, OTP_CMD_GO, OTP_CMD_GO_GO_);

  timeout = jiffies + HZ;
  do {
   udelay(1);
   ret = lan78xx_read_reg(dev, OTP_STATUS, &buf);
   if (time_after(jiffies, timeout)) {
    netdev_warn(dev->net,
         "timeout on OTP_STATUS");
    return -EIO;
   }
  } while (buf & OTP_STATUS_BUSY_);

  ret = lan78xx_read_reg(dev, OTP_RD_DATA, &buf);

  data[i] = (u8)(buf & 0xFF);
 }

 return 0;
}
