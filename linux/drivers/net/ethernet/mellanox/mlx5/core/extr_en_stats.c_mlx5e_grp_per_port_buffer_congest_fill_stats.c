
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mlx5e_pport_stats {int * per_tc_congest_prio_counters; int * per_tc_prio_counters; } ;
struct TYPE_2__ {struct mlx5e_pport_stats pport; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; TYPE_1__ stats; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_READ_CTR64_BE (int *,int ,int) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int NUM_PPORT_PER_TC_CONGEST_PRIO_COUNTERS ;
 int NUM_PPORT_PER_TC_PRIO_COUNTERS ;
 int NUM_PPORT_PRIO ;
 int pport_per_tc_congest_prio_stats_desc ;
 int pport_per_tc_prio_stats_desc ;
 int sbcam_reg ;

__attribute__((used)) static int mlx5e_grp_per_port_buffer_congest_fill_stats(struct mlx5e_priv *priv,
       u64 *data, int idx)
{
 struct mlx5e_pport_stats *pport = &priv->stats.pport;
 struct mlx5_core_dev *mdev = priv->mdev;
 int i, prio;

 if (!MLX5_CAP_GEN(mdev, sbcam_reg))
  return idx;

 for (prio = 0; prio < NUM_PPORT_PRIO; prio++) {
  for (i = 0; i < NUM_PPORT_PER_TC_PRIO_COUNTERS; i++)
   data[idx++] =
    MLX5E_READ_CTR64_BE(&pport->per_tc_prio_counters[prio],
          pport_per_tc_prio_stats_desc, i);
  for (i = 0; i < NUM_PPORT_PER_TC_CONGEST_PRIO_COUNTERS ; i++)
   data[idx++] =
    MLX5E_READ_CTR64_BE(&pport->per_tc_congest_prio_counters[prio],
          pport_per_tc_congest_prio_stats_desc, i);
 }

 return idx;
}
