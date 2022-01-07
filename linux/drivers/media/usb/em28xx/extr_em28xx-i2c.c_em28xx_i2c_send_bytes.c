
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct em28xx {int (* em28xx_write_regs_req ) (struct em28xx*,int,int,int *,int) ;int (* em28xx_read_reg ) (struct em28xx*,int) ;TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int ETIMEDOUT ;
 int dev_warn (int *,char*,int,...) ;
 int dprintk (int,char*,int,...) ;
 unsigned long em28xx_i2c_timeout (struct em28xx*) ;
 unsigned long jiffies ;
 int stub1 (struct em28xx*,int,int,int *,int) ;
 int stub2 (struct em28xx*,int) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int em28xx_i2c_send_bytes(struct em28xx *dev, u16 addr, u8 *buf,
     u16 len, int stop)
{
 unsigned long timeout = jiffies + em28xx_i2c_timeout(dev);
 int ret;

 if (len < 1 || len > 64)
  return -EOPNOTSUPP;






 ret = dev->em28xx_write_regs_req(dev, stop ? 2 : 3, addr, buf, len);
 if (ret != len) {
  if (ret < 0) {
   dev_warn(&dev->intf->dev,
     "writing to i2c device at 0x%x failed (error=%i)\n",
     addr, ret);
   return ret;
  }
  dev_warn(&dev->intf->dev,
    "%i bytes write to i2c device at 0x%x requested, but %i bytes written\n",
    len, addr, ret);
  return -EIO;
 }


 while (time_is_after_jiffies(timeout)) {
  ret = dev->em28xx_read_reg(dev, 0x05);
  if (ret == 0)
   return len;
  if (ret == 0x10) {
   dprintk(1, "I2C ACK error on writing to addr 0x%02x\n",
    addr);
   return -ENXIO;
  }
  if (ret < 0) {
   dev_warn(&dev->intf->dev,
     "failed to get i2c transfer status from bridge register (error=%i)\n",
     ret);
   return ret;
  }
  usleep_range(5000, 6000);





 }

 if (ret == 0x02 || ret == 0x04) {

  dprintk(0,
   "write to i2c device at 0x%x timed out (status=%i)\n",
   addr, ret);
  return -ETIMEDOUT;
 }

 dev_warn(&dev->intf->dev,
   "write to i2c device at 0x%x failed with unknown error (status=%i)\n",
   addr, ret);
 return -EIO;
}
