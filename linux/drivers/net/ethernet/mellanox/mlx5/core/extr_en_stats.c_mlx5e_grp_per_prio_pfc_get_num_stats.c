
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int NUM_PPORT_PER_PRIO_PFC_COUNTERS ;
 int NUM_PPORT_PFC_STALL_COUNTERS (struct mlx5e_priv*) ;
 int hweight8 (int ) ;
 int mlx5e_query_global_pause_combined (struct mlx5e_priv*) ;
 int mlx5e_query_pfc_combined (struct mlx5e_priv*) ;

__attribute__((used)) static int mlx5e_grp_per_prio_pfc_get_num_stats(struct mlx5e_priv *priv)
{
 return (mlx5e_query_global_pause_combined(priv) +
  hweight8(mlx5e_query_pfc_combined(priv))) *
  NUM_PPORT_PER_PRIO_PFC_COUNTERS +
  NUM_PPORT_PFC_STALL_COUNTERS(priv);
}
