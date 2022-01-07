
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mlx5e_priv {TYPE_1__* tls; } ;
struct TYPE_2__ {int sw_stats; } ;


 int MLX5E_READ_CTR_ATOMIC64 (int *,int ,int) ;
 int NUM_TLS_SW_COUNTERS ;
 int mlx5e_tls_sw_stats_desc ;

int mlx5e_tls_get_stats(struct mlx5e_priv *priv, u64 *data)
{
 int i, idx = 0;

 if (!priv->tls)
  return 0;

 for (i = 0; i < NUM_TLS_SW_COUNTERS; i++)
  data[idx++] =
      MLX5E_READ_CTR_ATOMIC64(&priv->tls->sw_stats,
         mlx5e_tls_sw_stats_desc, i);

 return NUM_TLS_SW_COUNTERS;
}
