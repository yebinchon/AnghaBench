
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_PORT_TYPE_IB ;
 int ipoib_enhanced_offloads ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int port_type ;

__attribute__((used)) static int mlx5i_check_required_hca_cap(struct mlx5_core_dev *mdev)
{
 if (MLX5_CAP_GEN(mdev, port_type) != MLX5_CAP_PORT_TYPE_IB)
  return -EOPNOTSUPP;

 if (!MLX5_CAP_GEN(mdev, ipoib_enhanced_offloads)) {
  mlx5_core_warn(mdev, "IPoIB enhanced offloads are not supported\n");
  return -EOPNOTSUPP;
 }

 return 0;
}
