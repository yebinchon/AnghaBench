
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_ttc_table {int ft; } ;
struct mlx5e_priv {int mdev; } ;


 int mlx5e_cleanup_ttc_rules (struct mlx5e_ttc_table*) ;
 int mlx5e_destroy_flow_table (int *) ;
 int mlx5e_tunnel_inner_ft_supported (int ) ;

void mlx5e_destroy_inner_ttc_table(struct mlx5e_priv *priv,
       struct mlx5e_ttc_table *ttc)
{
 if (!mlx5e_tunnel_inner_ft_supported(priv->mdev))
  return;

 mlx5e_cleanup_ttc_rules(ttc);
 mlx5e_destroy_flow_table(&ttc->ft);
}
