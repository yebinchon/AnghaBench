
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mem_start; int if_port; int irq; int dev_addr; int base_addr; int name; int * ethtool_ops; int watchdog_timeo; int * netdev_ops; } ;
struct el3_private {int lock; } ;


 int EL3_IO_EXTENT ;
 int TX_TIMEOUT ;
 scalar_t__ el3_debug ;
 int ethtool_ops ;
 int netdev_ops ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int pr_err (char*,int ,int ) ;
 int pr_info (char*,int ,...) ;
 int register_netdev (struct net_device*) ;
 int release_region (int ,int ) ;
 int spin_lock_init (int *) ;
 int version ;

__attribute__((used)) static int el3_common_init(struct net_device *dev)
{
 struct el3_private *lp = netdev_priv(dev);
 int err;
 const char *if_names[] = {"10baseT", "AUI", "undefined", "BNC"};

 spin_lock_init(&lp->lock);

 if (dev->mem_start & 0x05) {
  dev->if_port = (dev->mem_start & 0x0f);
 } else {

  dev->if_port |= (dev->mem_start & 0x08);
 }


 dev->netdev_ops = &netdev_ops;
 dev->watchdog_timeo = TX_TIMEOUT;
 dev->ethtool_ops = &ethtool_ops;

 err = register_netdev(dev);
 if (err) {
  pr_err("Failed to register 3c5x9 at %#3.3lx, IRQ %d.\n",
   dev->base_addr, dev->irq);
  release_region(dev->base_addr, EL3_IO_EXTENT);
  return err;
 }

 pr_info("%s: 3c5x9 found at %#3.3lx, %s port, address %pM, IRQ %d.\n",
        dev->name, dev->base_addr, if_names[(dev->if_port & 0x03)],
        dev->dev_addr, dev->irq);

 if (el3_debug > 0)
  pr_info("%s", version);
 return 0;

}
