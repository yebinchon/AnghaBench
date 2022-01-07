
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int IEEE_802_3_counters; } ;
struct TYPE_4__ {TYPE_1__ pport; } ;
struct mlx5e_priv {TYPE_2__ stats; } ;


 int MLX5E_READ_CTR64_BE (int *,int ,int) ;
 int NUM_PPORT_802_3_COUNTERS ;
 int pport_802_3_stats_desc ;

__attribute__((used)) static int mlx5e_grp_802_3_fill_stats(struct mlx5e_priv *priv, u64 *data,
          int idx)
{
 int i;

 for (i = 0; i < NUM_PPORT_802_3_COUNTERS; i++)
  data[idx++] = MLX5E_READ_CTR64_BE(&priv->stats.pport.IEEE_802_3_counters,
        pport_802_3_stats_desc, i);
 return idx;
}
