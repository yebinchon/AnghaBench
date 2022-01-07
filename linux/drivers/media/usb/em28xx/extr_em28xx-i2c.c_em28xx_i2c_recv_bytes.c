
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct em28xx {int (* em28xx_read_reg_req_len ) (struct em28xx*,int,int,int *,int) ;int (* em28xx_read_reg ) (struct em28xx*,int) ;TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int ETIMEDOUT ;
 int dev_warn (int *,char*,int,...) ;
 int dprintk (int,char*,int,...) ;
 int stub1 (struct em28xx*,int,int,int *,int) ;
 int stub2 (struct em28xx*,int) ;

__attribute__((used)) static int em28xx_i2c_recv_bytes(struct em28xx *dev, u16 addr, u8 *buf, u16 len)
{
 int ret;

 if (len < 1 || len > 64)
  return -EOPNOTSUPP;






 ret = dev->em28xx_read_reg_req_len(dev, 2, addr, buf, len);
 if (ret < 0) {
  dev_warn(&dev->intf->dev,
    "reading from i2c device at 0x%x failed (error=%i)\n",
    addr, ret);
  return ret;
 }
 ret = dev->em28xx_read_reg(dev, 0x05);
 if (ret == 0)
  return len;
 if (ret < 0) {
  dev_warn(&dev->intf->dev,
    "failed to get i2c transfer status from bridge register (error=%i)\n",
    ret);
  return ret;
 }
 if (ret == 0x10) {
  dprintk(1, "I2C ACK error on writing to addr 0x%02x\n",
   addr);
  return -ENXIO;
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
