
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_core_dev {int sys_image_guid; } ;


 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CAP_PORT_TYPE_ETH ;
 int mlx5_query_hca_vport_system_image_guid (struct mlx5_core_dev*,int *) ;
 int mlx5_query_nic_vport_system_image_guid (struct mlx5_core_dev*,int *) ;
 int port_type ;

u64 mlx5_query_nic_system_image_guid(struct mlx5_core_dev *mdev)
{
 int port_type_cap = MLX5_CAP_GEN(mdev, port_type);
 u64 tmp = 0;

 if (mdev->sys_image_guid)
  return mdev->sys_image_guid;

 if (port_type_cap == MLX5_CAP_PORT_TYPE_ETH)
  mlx5_query_nic_vport_system_image_guid(mdev, &tmp);
 else
  mlx5_query_hca_vport_system_image_guid(mdev, &tmp);

 mdev->sys_image_guid = tmp;

 return tmp;
}
