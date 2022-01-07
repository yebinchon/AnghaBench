
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __nixge_hw_set_mac_address (struct net_device*) ;
 int eth_mac_addr (struct net_device*,void*) ;

__attribute__((used)) static int nixge_net_set_mac_address(struct net_device *ndev, void *p)
{
 int err;

 err = eth_mac_addr(ndev, p);
 if (!err)
  __nixge_hw_set_mac_address(ndev);

 return err;
}
