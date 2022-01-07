
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int net; } ;


 int EIO ;
 int PMT_CTL ;
 int PMT_CTL_DEV_RDY ;
 int __smsc75xx_read_reg (struct usbnet*,int ,int*,int) ;
 int msleep (int) ;
 int netdev_warn (int ,char*,...) ;

__attribute__((used)) static int smsc75xx_wait_ready(struct usbnet *dev, int in_pm)
{
 int timeout = 0;

 do {
  u32 buf;
  int ret;

  ret = __smsc75xx_read_reg(dev, PMT_CTL, &buf, in_pm);

  if (ret < 0) {
   netdev_warn(dev->net, "Failed to read PMT_CTL: %d\n", ret);
   return ret;
  }

  if (buf & PMT_CTL_DEV_RDY)
   return 0;

  msleep(10);
  timeout++;
 } while (timeout < 100);

 netdev_warn(dev->net, "timeout waiting for device ready\n");
 return -EIO;
}
