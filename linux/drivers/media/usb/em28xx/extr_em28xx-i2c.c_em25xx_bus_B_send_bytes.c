
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct em28xx {int (* em28xx_write_regs_req ) (struct em28xx*,int,int,int *,int) ;int (* em28xx_read_reg_req ) (struct em28xx*,int,int) ;TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int dev_warn (int *,char*,int,int,...) ;
 int dprintk (int,char*,int) ;
 int stub1 (struct em28xx*,int,int,int *,int) ;
 int stub2 (struct em28xx*,int,int) ;

__attribute__((used)) static int em25xx_bus_B_send_bytes(struct em28xx *dev, u16 addr, u8 *buf,
       u16 len)
{
 int ret;

 if (len < 1 || len > 64)
  return -EOPNOTSUPP;






 ret = dev->em28xx_write_regs_req(dev, 0x06, addr, buf, len);
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

 ret = dev->em28xx_read_reg_req(dev, 0x08, 0x0000);




 if (!ret)
  return len;

 if (ret > 0) {
  dprintk(1, "Bus B R08 returned 0x%02x: I2C ACK error\n", ret);
  return -ENXIO;
 }

 return ret;





}
