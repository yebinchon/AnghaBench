
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int mlx5e_grp_per_prio_pfc_get_num_stats (struct mlx5e_priv*) ;
 int mlx5e_grp_per_prio_traffic_get_num_stats () ;

__attribute__((used)) static int mlx5e_grp_per_prio_get_num_stats(struct mlx5e_priv *priv)
{
 return mlx5e_grp_per_prio_traffic_get_num_stats() +
  mlx5e_grp_per_prio_pfc_get_num_stats(priv);
}
