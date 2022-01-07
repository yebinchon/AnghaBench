
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int net; } ;


 int PHY_INT_MASK_ANEG_COMP ;
 int PHY_INT_MASK_LINK_DOWN ;
 int netdev_dbg (int ,char*) ;
 int netdev_info (int ,char*) ;
 int netdev_warn (int ,char*) ;
 int netif_running (int ) ;
 int smsc75xx_enable_phy_wakeup_interrupts (struct usbnet*,int ) ;
 int smsc75xx_enter_suspend1 (struct usbnet*) ;
 int smsc75xx_enter_suspend2 (struct usbnet*) ;
 int smsc75xx_enter_suspend3 (struct usbnet*) ;

__attribute__((used)) static int smsc75xx_autosuspend(struct usbnet *dev, u32 link_up)
{
 int ret;

 if (!netif_running(dev->net)) {

  netdev_dbg(dev->net, "autosuspend entering SUSPEND2\n");
  return smsc75xx_enter_suspend2(dev);
 }

 if (!link_up) {

  netdev_dbg(dev->net, "autosuspend entering SUSPEND1\n");


  ret = smsc75xx_enable_phy_wakeup_interrupts(dev,
   PHY_INT_MASK_ANEG_COMP);
  if (ret < 0) {
   netdev_warn(dev->net, "error enabling PHY wakeup ints\n");
   return ret;
  }

  netdev_info(dev->net, "entering SUSPEND1 mode\n");
  return smsc75xx_enter_suspend1(dev);
 }


 ret = smsc75xx_enable_phy_wakeup_interrupts(dev,
  PHY_INT_MASK_LINK_DOWN);
 if (ret < 0) {
  netdev_warn(dev->net, "error enabling PHY wakeup ints\n");
  return ret;
 }

 netdev_dbg(dev->net, "autosuspend entering SUSPEND3\n");
 return smsc75xx_enter_suspend3(dev);
}
