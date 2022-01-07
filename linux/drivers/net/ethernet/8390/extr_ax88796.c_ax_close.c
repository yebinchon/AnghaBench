
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int phydev; } ;
struct ax_device {int mii_bus; scalar_t__ running; } ;


 int ax_ei_close (struct net_device*) ;
 int ax_phy_switch (struct net_device*,int ) ;
 int free_irq (int ,struct net_device*) ;
 int free_mdio_bitbang (int ) ;
 int mdiobus_unregister (int ) ;
 int netdev_dbg (struct net_device*,char*) ;
 int phy_disconnect (int ) ;
 struct ax_device* to_ax_dev (struct net_device*) ;
 int wmb () ;

__attribute__((used)) static int ax_close(struct net_device *dev)
{
 struct ax_device *ax = to_ax_dev(dev);

 netdev_dbg(dev, "close\n");

 ax->running = 0;
 wmb();

 ax_ei_close(dev);


 ax_phy_switch(dev, 0);
 phy_disconnect(dev->phydev);

 free_irq(dev->irq, dev);

 mdiobus_unregister(ax->mii_bus);
 free_mdio_bitbang(ax->mii_bus);
 return 0;
}
