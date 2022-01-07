
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int irq; int phydev; int name; } ;
struct ax_device {int running; int mii_bus; int irqflags; TYPE_1__* plat; } ;
struct TYPE_2__ {scalar_t__ check_irq; } ;


 int ax_ei_interrupt ;
 int ax_ei_interrupt_filtered ;
 int ax_ei_open (struct net_device*) ;
 int ax_mii_init (struct net_device*) ;
 int ax_mii_probe (struct net_device*) ;
 int ax_phy_switch (struct net_device*,int) ;
 int free_irq (int ,struct net_device*) ;
 int free_mdio_bitbang (int ) ;
 int mdiobus_unregister (int ) ;
 int netdev_dbg (struct net_device*,char*) ;
 int phy_disconnect (int ) ;
 int phy_start (int ) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 struct ax_device* to_ax_dev (struct net_device*) ;

__attribute__((used)) static int ax_open(struct net_device *dev)
{
 struct ax_device *ax = to_ax_dev(dev);
 int ret;

 netdev_dbg(dev, "open\n");

 ret = ax_mii_init(dev);
 if (ret)
  goto failed_mii;

 if (ax->plat->check_irq)
  ret = request_irq(dev->irq, ax_ei_interrupt_filtered,
      ax->irqflags, dev->name, dev);
 else
  ret = request_irq(dev->irq, ax_ei_interrupt, ax->irqflags,
      dev->name, dev);
 if (ret)
  goto failed_request_irq;


 ax_phy_switch(dev, 1);

 ret = ax_mii_probe(dev);
 if (ret)
  goto failed_mii_probe;
 phy_start(dev->phydev);

 ret = ax_ei_open(dev);
 if (ret)
  goto failed_ax_ei_open;

 ax->running = 1;

 return 0;

 failed_ax_ei_open:
 phy_disconnect(dev->phydev);
 failed_mii_probe:
 ax_phy_switch(dev, 0);
 free_irq(dev->irq, dev);
 failed_request_irq:

 mdiobus_unregister(ax->mii_bus);
 free_mdio_bitbang(ax->mii_bus);
 failed_mii:
 return ret;
}
