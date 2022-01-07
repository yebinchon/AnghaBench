
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_ttc_table {int ft; } ;
struct mlx5e_priv {int dummy; } ;


 int mlx5e_cleanup_ttc_rules (struct mlx5e_ttc_table*) ;
 int mlx5e_destroy_flow_table (int *) ;

void mlx5e_destroy_ttc_table(struct mlx5e_priv *priv,
        struct mlx5e_ttc_table *ttc)
{
 mlx5e_cleanup_ttc_rules(ttc);
 mlx5e_destroy_flow_table(&ttc->ft);
}
