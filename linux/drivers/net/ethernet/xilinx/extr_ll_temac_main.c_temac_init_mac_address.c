
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;


 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,void const*) ;
 int is_valid_ether_addr (int ) ;
 int temac_do_set_mac_address (struct net_device*) ;

__attribute__((used)) static int temac_init_mac_address(struct net_device *ndev, const void *address)
{
 ether_addr_copy(ndev->dev_addr, address);
 if (!is_valid_ether_addr(ndev->dev_addr))
  eth_hw_addr_random(ndev);
 temac_do_set_mac_address(ndev);
 return 0;
}
