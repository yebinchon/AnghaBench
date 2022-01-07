
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int net; scalar_t__* data; } ;
struct smsc95xx_priv {int features; } ;


 int EBUSY ;
 int FEATURE_PHY_NLP_CROSSOVER ;
 int PHY_INT_MASK_ANEG_COMP_ ;
 int PHY_INT_MASK_LINK_DOWN_ ;
 int netdev_dbg (int ,char*) ;
 int netdev_info (int ,char*) ;
 int netdev_warn (int ,char*) ;
 int netif_running (int ) ;
 int smsc95xx_enable_phy_wakeup_interrupts (struct usbnet*,int ) ;
 int smsc95xx_enter_suspend1 (struct usbnet*) ;
 int smsc95xx_enter_suspend2 (struct usbnet*) ;
 int smsc95xx_enter_suspend3 (struct usbnet*) ;

__attribute__((used)) static int smsc95xx_autosuspend(struct usbnet *dev, u32 link_up)
{
 struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
 int ret;

 if (!netif_running(dev->net)) {

  netdev_dbg(dev->net, "autosuspend entering SUSPEND2\n");
  return smsc95xx_enter_suspend2(dev);
 }

 if (!link_up) {




  if (!(pdata->features & FEATURE_PHY_NLP_CROSSOVER)) {
   netdev_warn(dev->net, "EDPD not supported\n");
   return -EBUSY;
  }

  netdev_dbg(dev->net, "autosuspend entering SUSPEND1\n");


  ret = smsc95xx_enable_phy_wakeup_interrupts(dev,
   PHY_INT_MASK_ANEG_COMP_);
  if (ret < 0) {
   netdev_warn(dev->net, "error enabling PHY wakeup ints\n");
   return ret;
  }

  netdev_info(dev->net, "entering SUSPEND1 mode\n");
  return smsc95xx_enter_suspend1(dev);
 }


 ret = smsc95xx_enable_phy_wakeup_interrupts(dev,
  PHY_INT_MASK_LINK_DOWN_);
 if (ret < 0) {
  netdev_warn(dev->net, "error enabling PHY wakeup ints\n");
  return ret;
 }

 netdev_dbg(dev->net, "autosuspend entering SUSPEND3\n");
 return smsc95xx_enter_suspend3(dev);
}
