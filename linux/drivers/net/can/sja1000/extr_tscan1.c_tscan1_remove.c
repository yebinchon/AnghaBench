
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {scalar_t__ reg_base; } ;
struct net_device {unsigned long base_addr; } ;
struct device {int dummy; } ;


 scalar_t__ TSCAN1_MODE ;
 int TSCAN1_PLD_SIZE ;
 int TSCAN1_SJA1000_SIZE ;
 struct net_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int free_sja1000dev (struct net_device*) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int outb (int ,scalar_t__) ;
 int release_region (unsigned long,int ) ;
 int unregister_sja1000dev (struct net_device*) ;

__attribute__((used)) static int tscan1_remove(struct device *dev, unsigned id )
{
 struct net_device *netdev;
 struct sja1000_priv *priv;
 unsigned long pld_base, sja1000_base;

 netdev = dev_get_drvdata(dev);
 unregister_sja1000dev(netdev);
 dev_set_drvdata(dev, ((void*)0));

 priv = netdev_priv(netdev);
 pld_base = netdev->base_addr;
 sja1000_base = (unsigned long)priv->reg_base;

 outb(0, pld_base + TSCAN1_MODE);

 release_region(sja1000_base, TSCAN1_SJA1000_SIZE);
 release_region(pld_base, TSCAN1_PLD_SIZE);

 free_sja1000dev(netdev);

 return 0;
}
