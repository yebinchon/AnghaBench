
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int au1000_init (struct net_device*) ;
 int au1000_reset_mac (struct net_device*) ;
 int netdev_err (struct net_device*,char*,struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void au1000_tx_timeout(struct net_device *dev)
{
 netdev_err(dev, "au1000_tx_timeout: dev=%p\n", dev);
 au1000_reset_mac(dev);
 au1000_init(dev);
 netif_trans_update(dev);
 netif_wake_queue(dev);
}
