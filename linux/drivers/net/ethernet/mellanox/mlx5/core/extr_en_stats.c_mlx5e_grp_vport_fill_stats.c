
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int query_vport_out; } ;
struct TYPE_4__ {TYPE_1__ vport; } ;
struct mlx5e_priv {TYPE_2__ stats; } ;


 int MLX5E_READ_CTR64_BE (int ,int ,int) ;
 int NUM_VPORT_COUNTERS ;
 int vport_stats_desc ;

__attribute__((used)) static int mlx5e_grp_vport_fill_stats(struct mlx5e_priv *priv, u64 *data,
          int idx)
{
 int i;

 for (i = 0; i < NUM_VPORT_COUNTERS; i++)
  data[idx++] = MLX5E_READ_CTR64_BE(priv->stats.vport.query_vport_out,
        vport_stats_desc, i);
 return idx;
}
