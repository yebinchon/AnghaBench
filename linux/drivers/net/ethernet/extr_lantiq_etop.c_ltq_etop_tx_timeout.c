
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ltq_etop_hw_exit (struct net_device*) ;
 int ltq_etop_hw_init (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void
ltq_etop_tx_timeout(struct net_device *dev)
{
 int err;

 ltq_etop_hw_exit(dev);
 err = ltq_etop_hw_init(dev);
 if (err)
  goto err_hw;
 netif_trans_update(dev);
 netif_wake_queue(dev);
 return;

err_hw:
 ltq_etop_hw_exit(dev);
 netdev_err(dev, "failed to restart etop after TX timeout\n");
}
