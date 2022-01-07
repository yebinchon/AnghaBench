
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int eth_mac_addr (struct net_device*,void*) ;
 int hip04_update_mac_address (struct net_device*) ;

__attribute__((used)) static int hip04_set_mac_address(struct net_device *ndev, void *addr)
{
 eth_mac_addr(ndev, addr);
 hip04_update_mac_address(ndev);
 return 0;
}
