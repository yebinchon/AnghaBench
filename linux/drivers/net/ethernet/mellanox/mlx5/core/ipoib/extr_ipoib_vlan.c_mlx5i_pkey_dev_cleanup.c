
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 void mlx5i_dev_cleanup (struct net_device*) ;

__attribute__((used)) static void mlx5i_pkey_dev_cleanup(struct net_device *netdev)
{
 return mlx5i_dev_cleanup(netdev);
}
