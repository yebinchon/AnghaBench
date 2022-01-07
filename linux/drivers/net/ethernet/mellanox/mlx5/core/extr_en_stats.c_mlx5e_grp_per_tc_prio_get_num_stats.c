
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int NUM_PPORT_PER_TC_PRIO_COUNTERS ;
 int NUM_PPORT_PRIO ;
 int sbcam_reg ;

__attribute__((used)) static int mlx5e_grp_per_tc_prio_get_num_stats(struct mlx5e_priv *priv)
{
 struct mlx5_core_dev *mdev = priv->mdev;

 if (!MLX5_CAP_GEN(mdev, sbcam_reg))
  return 0;

 return NUM_PPORT_PER_TC_PRIO_COUNTERS * NUM_PPORT_PRIO;
}
