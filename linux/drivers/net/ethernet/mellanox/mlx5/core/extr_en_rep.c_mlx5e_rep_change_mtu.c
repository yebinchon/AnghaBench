
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int mlx5e_change_mtu (struct net_device*,int,int *) ;

__attribute__((used)) static int mlx5e_rep_change_mtu(struct net_device *netdev, int new_mtu)
{
 return mlx5e_change_mtu(netdev, new_mtu, ((void*)0));
}
