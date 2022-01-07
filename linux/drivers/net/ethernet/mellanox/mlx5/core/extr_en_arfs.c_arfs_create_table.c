
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_arfs_tables {TYPE_1__* arfs_tables; } ;
struct TYPE_4__ {int ns; struct mlx5e_arfs_tables arfs; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;
struct mlx5e_flow_table {int * t; scalar_t__ num_groups; } ;
struct mlx5_flow_table_attr {int prio; int level; int max_fte; } ;
typedef enum arfs_type { ____Placeholder_arfs_type } arfs_type ;
struct TYPE_3__ {struct mlx5e_flow_table ft; } ;


 scalar_t__ IS_ERR (int *) ;
 int MLX5E_ARFS_FT_LEVEL ;
 int MLX5E_ARFS_TABLE_SIZE ;
 int MLX5E_NIC_PRIO ;
 int PTR_ERR (int *) ;
 int arfs_add_default_rule (struct mlx5e_priv*,int) ;
 int arfs_create_groups (struct mlx5e_flow_table*,int) ;
 int * mlx5_create_flow_table (int ,struct mlx5_flow_table_attr*) ;
 int mlx5e_destroy_flow_table (struct mlx5e_flow_table*) ;

__attribute__((used)) static int arfs_create_table(struct mlx5e_priv *priv,
        enum arfs_type type)
{
 struct mlx5e_arfs_tables *arfs = &priv->fs.arfs;
 struct mlx5e_flow_table *ft = &arfs->arfs_tables[type].ft;
 struct mlx5_flow_table_attr ft_attr = {};
 int err;

 ft->num_groups = 0;

 ft_attr.max_fte = MLX5E_ARFS_TABLE_SIZE;
 ft_attr.level = MLX5E_ARFS_FT_LEVEL;
 ft_attr.prio = MLX5E_NIC_PRIO;

 ft->t = mlx5_create_flow_table(priv->fs.ns, &ft_attr);
 if (IS_ERR(ft->t)) {
  err = PTR_ERR(ft->t);
  ft->t = ((void*)0);
  return err;
 }

 err = arfs_create_groups(ft, type);
 if (err)
  goto err;

 err = arfs_add_default_rule(priv, type);
 if (err)
  goto err;

 return 0;
err:
 mlx5e_destroy_flow_table(ft);
 return err;
}
