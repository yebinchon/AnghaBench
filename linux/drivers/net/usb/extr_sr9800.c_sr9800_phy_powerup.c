
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;


 int SR_SWRESET_CLEAR ;
 int SR_SWRESET_IPPD ;
 int SR_SWRESET_IPRL ;
 int msleep (int) ;
 int netdev_err (int ,char*,int) ;
 int sr_sw_reset (struct usbnet*,int) ;

__attribute__((used)) static int sr9800_phy_powerup(struct usbnet *dev)
{
 int ret;


 ret = sr_sw_reset(dev, SR_SWRESET_IPPD | SR_SWRESET_IPRL);
 if (ret < 0) {
  netdev_err(dev->net, "Failed to power down PHY : %d\n", ret);
  return ret;
 }
 msleep(20);


 ret = sr_sw_reset(dev, SR_SWRESET_IPRL);
 if (ret < 0) {
  netdev_err(dev->net, "Failed to reset PHY: %d\n", ret);
  return ret;
 }
 msleep(600);


 ret = sr_sw_reset(dev, SR_SWRESET_CLEAR);
 if (ret < 0) {
  netdev_err(dev->net, "Failed to power up PHY: %d\n", ret);
  return ret;
 }
 msleep(20);


 ret = sr_sw_reset(dev, SR_SWRESET_IPRL);
 if (ret < 0) {
  netdev_err(dev->net, "Failed to reset PHY: %d\n", ret);
  return ret;
 }

 return 0;
}
