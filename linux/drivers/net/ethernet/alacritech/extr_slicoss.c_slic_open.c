
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_device {int dummy; } ;
struct net_device {int dummy; } ;


 int netdev_err (struct net_device*,char*,int) ;
 struct slic_device* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int slic_init_iface (struct slic_device*) ;

__attribute__((used)) static int slic_open(struct net_device *dev)
{
 struct slic_device *sdev = netdev_priv(dev);
 int err;

 netif_carrier_off(dev);

 err = slic_init_iface(sdev);
 if (err) {
  netdev_err(dev, "failed to initialize interface: %i\n", err);
  return err;
 }

 netif_start_queue(dev);

 return 0;
}
