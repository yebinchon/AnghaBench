
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_PCAM_REG (struct mlx5_core_dev*,int ) ;
 scalar_t__ NUM_REQ_PPCNT_COUNTER_S1 ;
 scalar_t__ NUM_REQ_Q_COUNTERS_S1 ;
 int max_num_of_monitor_counters ;
 int num_ppcnt_monitor_counters ;
 int num_q_monitor_counters ;
 int ppcnt ;

int mlx5e_monitor_counter_supported(struct mlx5e_priv *priv)
{
 struct mlx5_core_dev *mdev = priv->mdev;

 if (!MLX5_CAP_GEN(mdev, max_num_of_monitor_counters))
  return 0;
 if (MLX5_CAP_PCAM_REG(mdev, ppcnt) &&
     MLX5_CAP_GEN(mdev, num_ppcnt_monitor_counters) <
     NUM_REQ_PPCNT_COUNTER_S1)
  return 0;
 if (MLX5_CAP_GEN(mdev, num_q_monitor_counters) <
     NUM_REQ_Q_COUNTERS_S1)
  return 0;
 return 1;
}
