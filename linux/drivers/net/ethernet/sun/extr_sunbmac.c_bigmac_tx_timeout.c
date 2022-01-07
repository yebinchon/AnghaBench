
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bigmac {int dummy; } ;


 int bigmac_init_hw (struct bigmac*,int ) ;
 struct bigmac* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void bigmac_tx_timeout(struct net_device *dev)
{
 struct bigmac *bp = netdev_priv(dev);

 bigmac_init_hw(bp, 0);
 netif_wake_queue(dev);
}
