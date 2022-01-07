
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mlx5e_priv {TYPE_1__* ipsec; } ;
struct TYPE_2__ {int sw_stats; int stats; } ;


 int MLX5E_READ_CTR64_CPU (int *,int ,int) ;
 int MLX5E_READ_CTR_ATOMIC64 (int *,int ,int) ;
 int NUM_IPSEC_COUNTERS ;
 int NUM_IPSEC_HW_COUNTERS ;
 int NUM_IPSEC_SW_COUNTERS ;
 int mlx5e_ipsec_hw_stats_desc ;
 int mlx5e_ipsec_sw_stats_desc ;

int mlx5e_ipsec_get_stats(struct mlx5e_priv *priv, u64 *data)
{
 int i, idx = 0;

 if (!priv->ipsec)
  return 0;

 for (i = 0; i < NUM_IPSEC_HW_COUNTERS; i++)
  data[idx++] = MLX5E_READ_CTR64_CPU(&priv->ipsec->stats,
         mlx5e_ipsec_hw_stats_desc, i);

 for (i = 0; i < NUM_IPSEC_SW_COUNTERS; i++)
  data[idx++] = MLX5E_READ_CTR_ATOMIC64(&priv->ipsec->sw_stats,
            mlx5e_ipsec_sw_stats_desc, i);

 return NUM_IPSEC_COUNTERS;
}
