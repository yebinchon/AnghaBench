
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; int perm_addr; } ;
struct bnad {int perm_addr; struct net_device* netdev; } ;


 int ether_addr_copy (int ,int ) ;
 scalar_t__ is_zero_ether_addr (int ) ;

__attribute__((used)) static void
bnad_set_netdev_perm_addr(struct bnad *bnad)
{
 struct net_device *netdev = bnad->netdev;

 ether_addr_copy(netdev->perm_addr, bnad->perm_addr);
 if (is_zero_ether_addr(netdev->dev_addr))
  ether_addr_copy(netdev->dev_addr, bnad->perm_addr);
}
