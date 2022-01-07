
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5e_priv {int mdev; } ;
struct mlx5_pme_stats {int error_counters; int status_counters; } ;


 int MLX5E_READ_CTR64_CPU (int ,int ,int) ;
 int NUM_PME_ERR_STATS ;
 int NUM_PME_STATUS_STATS ;
 int mlx5_get_pme_stats (int ,struct mlx5_pme_stats*) ;
 int mlx5e_pme_error_desc ;
 int mlx5e_pme_status_desc ;

__attribute__((used)) static int mlx5e_grp_pme_fill_stats(struct mlx5e_priv *priv, u64 *data,
        int idx)
{
 struct mlx5_pme_stats pme_stats;
 int i;

 mlx5_get_pme_stats(priv->mdev, &pme_stats);

 for (i = 0; i < NUM_PME_STATUS_STATS; i++)
  data[idx++] = MLX5E_READ_CTR64_CPU(pme_stats.status_counters,
         mlx5e_pme_status_desc, i);

 for (i = 0; i < NUM_PME_ERR_STATS; i++)
  data[idx++] = MLX5E_READ_CTR64_CPU(pme_stats.error_counters,
         mlx5e_pme_error_desc, i);

 return idx;
}
