
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int ether_addr_copy (int ,int ) ;
 int is_valid_ether_addr (int ) ;

__attribute__((used)) static int mlx5e_uplink_rep_set_mac(struct net_device *netdev, void *addr)
{
 struct sockaddr *saddr = addr;

 if (!is_valid_ether_addr(saddr->sa_data))
  return -EADDRNOTAVAIL;

 ether_addr_copy(netdev->dev_addr, saddr->sa_data);
 return 0;
}
