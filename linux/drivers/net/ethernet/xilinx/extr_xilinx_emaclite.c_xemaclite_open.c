
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_local {int * phy_dev; TYPE_1__* ndev; scalar_t__ phy_node; } ;
struct net_device {int irq; int name; int dev_addr; } ;
struct TYPE_2__ {int dev; } ;


 int ADVERTISE_ALL ;
 int ADVERTISE_CSMA ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int ENODEV ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_CTRL1000 ;
 int PHY_INTERFACE_MODE_MII ;
 int SPEED_100 ;
 int dev_err (int *,char*,...) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int * of_phy_connect (TYPE_1__*,scalar_t__,int ,int ,int ) ;
 int phy_disconnect (int *) ;
 int phy_read (int *,int ) ;
 int phy_set_max_speed (int *,int ) ;
 int phy_start (int *) ;
 int phy_write (int *,int ,int) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int xemaclite_adjust_link ;
 int xemaclite_disable_interrupts (struct net_local*) ;
 int xemaclite_enable_interrupts (struct net_local*) ;
 int xemaclite_interrupt ;
 int xemaclite_update_address (struct net_local*,int ) ;

__attribute__((used)) static int xemaclite_open(struct net_device *dev)
{
 struct net_local *lp = netdev_priv(dev);
 int retval;


 xemaclite_disable_interrupts(lp);

 if (lp->phy_node) {
  u32 bmcr;

  lp->phy_dev = of_phy_connect(lp->ndev, lp->phy_node,
          xemaclite_adjust_link, 0,
          PHY_INTERFACE_MODE_MII);
  if (!lp->phy_dev) {
   dev_err(&lp->ndev->dev, "of_phy_connect() failed\n");
   return -ENODEV;
  }


  phy_set_max_speed(lp->phy_dev, SPEED_100);


  phy_write(lp->phy_dev, MII_CTRL1000, 0);


  phy_write(lp->phy_dev, MII_ADVERTISE, ADVERTISE_ALL |
     ADVERTISE_CSMA);


  bmcr = phy_read(lp->phy_dev, MII_BMCR);
  bmcr |= (BMCR_ANENABLE | BMCR_ANRESTART);
  phy_write(lp->phy_dev, MII_BMCR, bmcr);

  phy_start(lp->phy_dev);
 }


 xemaclite_update_address(lp, dev->dev_addr);


 retval = request_irq(dev->irq, xemaclite_interrupt, 0, dev->name, dev);
 if (retval) {
  dev_err(&lp->ndev->dev, "Could not allocate interrupt %d\n",
   dev->irq);
  if (lp->phy_dev)
   phy_disconnect(lp->phy_dev);
  lp->phy_dev = ((void*)0);

  return retval;
 }


 xemaclite_enable_interrupts(lp);


 netif_start_queue(dev);

 return 0;
}
