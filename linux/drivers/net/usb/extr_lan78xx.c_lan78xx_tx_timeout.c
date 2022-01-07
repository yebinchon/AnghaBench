
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lan78xx_net {int bh; int txq; } ;


 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int tasklet_schedule (int *) ;
 int unlink_urbs (struct lan78xx_net*,int *) ;

__attribute__((used)) static void lan78xx_tx_timeout(struct net_device *net)
{
 struct lan78xx_net *dev = netdev_priv(net);

 unlink_urbs(dev, &dev->txq);
 tasklet_schedule(&dev->bh);
}
