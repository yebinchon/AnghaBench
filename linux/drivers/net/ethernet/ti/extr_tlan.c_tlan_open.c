
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlan_priv {int tlan_rev; int media_timer; int timer; } ;
struct net_device {int name; int irq; int base_addr; } ;


 int IRQF_SHARED ;
 int TLAN_DBG (int ,char*,int ,int ) ;
 int TLAN_DEBUG_GNRL ;
 int TLAN_DEF_REVISION ;
 int netdev_err (struct net_device*,char*,int ) ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int timer_setup (int *,int *,int ) ;
 int tlan_dio_read8 (int ,int ) ;
 int tlan_handle_interrupt ;
 int * tlan_phy_monitor ;
 int tlan_start (struct net_device*) ;

__attribute__((used)) static int tlan_open(struct net_device *dev)
{
 struct tlan_priv *priv = netdev_priv(dev);
 int err;

 priv->tlan_rev = tlan_dio_read8(dev->base_addr, TLAN_DEF_REVISION);
 err = request_irq(dev->irq, tlan_handle_interrupt, IRQF_SHARED,
     dev->name, dev);

 if (err) {
  netdev_err(dev, "Cannot open because IRQ %d is already in use\n",
      dev->irq);
  return err;
 }

 timer_setup(&priv->timer, ((void*)0), 0);
 timer_setup(&priv->media_timer, tlan_phy_monitor, 0);

 tlan_start(dev);

 TLAN_DBG(TLAN_DEBUG_GNRL, "%s: Opened.  TLAN Chip Rev: %x\n",
   dev->name, priv->tlan_rev);

 return 0;

}
