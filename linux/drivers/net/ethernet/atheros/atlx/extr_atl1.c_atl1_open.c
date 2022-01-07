
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1_adapter {int dummy; } ;


 int atl1_reset (struct atl1_adapter*) ;
 int atl1_setup_ring_resources (struct atl1_adapter*) ;
 int atl1_up (struct atl1_adapter*) ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;

__attribute__((used)) static int atl1_open(struct net_device *netdev)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);
 int err;

 netif_carrier_off(netdev);


 err = atl1_setup_ring_resources(adapter);
 if (err)
  return err;

 err = atl1_up(adapter);
 if (err)
  goto err_up;

 return 0;

err_up:
 atl1_reset(adapter);
 return err;
}
