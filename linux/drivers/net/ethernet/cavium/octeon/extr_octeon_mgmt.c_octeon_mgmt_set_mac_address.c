
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int eth_mac_addr (struct net_device*,void*) ;
 int octeon_mgmt_set_rx_filtering (struct net_device*) ;

__attribute__((used)) static int octeon_mgmt_set_mac_address(struct net_device *netdev, void *addr)
{
 int r = eth_mac_addr(netdev, addr);

 if (r)
  return r;

 octeon_mgmt_set_rx_filtering(netdev);

 return 0;
}
