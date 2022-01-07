
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_flow_table {int * t; scalar_t__ num_groups; } ;
struct mlx5e_l2_table {struct mlx5e_flow_table ft; } ;
struct TYPE_2__ {int ns; struct mlx5e_l2_table l2; } ;
struct mlx5e_priv {TYPE_1__ fs; } ;
struct mlx5_flow_table_attr {int prio; int level; int max_fte; } ;


 scalar_t__ IS_ERR (int *) ;
 int MLX5E_L2_FT_LEVEL ;
 int MLX5E_L2_TABLE_SIZE ;
 int MLX5E_NIC_PRIO ;
 int PTR_ERR (int *) ;
 int * mlx5_create_flow_table (int ,struct mlx5_flow_table_attr*) ;
 int mlx5_destroy_flow_table (int *) ;
 int mlx5e_create_l2_table_groups (struct mlx5e_l2_table*) ;

__attribute__((used)) static int mlx5e_create_l2_table(struct mlx5e_priv *priv)
{
 struct mlx5e_l2_table *l2_table = &priv->fs.l2;
 struct mlx5e_flow_table *ft = &l2_table->ft;
 struct mlx5_flow_table_attr ft_attr = {};
 int err;

 ft->num_groups = 0;

 ft_attr.max_fte = MLX5E_L2_TABLE_SIZE;
 ft_attr.level = MLX5E_L2_FT_LEVEL;
 ft_attr.prio = MLX5E_NIC_PRIO;

 ft->t = mlx5_create_flow_table(priv->fs.ns, &ft_attr);
 if (IS_ERR(ft->t)) {
  err = PTR_ERR(ft->t);
  ft->t = ((void*)0);
  return err;
 }

 err = mlx5e_create_l2_table_groups(l2_table);
 if (err)
  goto err_destroy_flow_table;

 return 0;

err_destroy_flow_table:
 mlx5_destroy_flow_table(ft->t);
 ft->t = ((void*)0);

 return err;
}
