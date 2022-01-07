
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int irq; int if_port; int dev_addr; } ;
struct el3_private {int type; } ;
typedef enum el3_cardtype { ____Placeholder_el3_cardtype } el3_cardtype ;
typedef int __be16 ;


 int ETH_ALEN ;
 int memcpy (int ,int *,int ) ;
 struct el3_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void el3_dev_fill(struct net_device *dev, __be16 *phys_addr, int ioaddr,
    int irq, int if_port, enum el3_cardtype type)
{
 struct el3_private *lp = netdev_priv(dev);

 memcpy(dev->dev_addr, phys_addr, ETH_ALEN);
 dev->base_addr = ioaddr;
 dev->irq = irq;
 dev->if_port = if_port;
 lp->type = type;
}
