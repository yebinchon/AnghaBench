
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_CAP_GEN (struct mlx5_core_dev const*,int ) ;
 int vhca_id ;

__attribute__((used)) static unsigned int
vport_to_devlink_port_index(const struct mlx5_core_dev *dev, u16 vport_num)
{
 return (MLX5_CAP_GEN(dev, vhca_id) << 16) | vport_num;
}
