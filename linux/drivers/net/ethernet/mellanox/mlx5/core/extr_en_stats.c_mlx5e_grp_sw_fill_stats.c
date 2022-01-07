
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int sw; } ;
struct mlx5e_priv {TYPE_1__ stats; } ;


 int MLX5E_READ_CTR64_CPU (int *,int ,int) ;
 int NUM_SW_COUNTERS ;
 int sw_stats_desc ;

__attribute__((used)) static int mlx5e_grp_sw_fill_stats(struct mlx5e_priv *priv, u64 *data, int idx)
{
 int i;

 for (i = 0; i < NUM_SW_COUNTERS; i++)
  data[idx++] = MLX5E_READ_CTR64_CPU(&priv->stats.sw, sw_stats_desc, i);
 return idx;
}
