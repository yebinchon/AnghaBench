
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int NUM_PME_ERR_STATS ;
 int NUM_PME_STATUS_STATS ;

__attribute__((used)) static int mlx5e_grp_pme_get_num_stats(struct mlx5e_priv *priv)
{
 return NUM_PME_STATUS_STATS + NUM_PME_ERR_STATS;
}
