
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_query_nic_vport_mac_address (struct mlx5_core_dev*,int ,int,int *) ;

int mlx5_query_mac_address(struct mlx5_core_dev *mdev, u8 *addr)
{
 return mlx5_query_nic_vport_mac_address(mdev, 0, 0, addr);
}
