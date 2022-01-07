
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int netdev; } ;
struct net_device {int dummy; } ;


 int e100_up (struct nic*) ;
 int ifup ;
 struct nic* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_err (struct nic*,int ,int ,char*) ;

__attribute__((used)) static int e100_open(struct net_device *netdev)
{
 struct nic *nic = netdev_priv(netdev);
 int err = 0;

 netif_carrier_off(netdev);
 if ((err = e100_up(nic)))
  netif_err(nic, ifup, nic->netdev, "Cannot open interface, aborting\n");
 return err;
}
