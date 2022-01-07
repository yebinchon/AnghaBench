
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttc_params {int ft_attr; } ;
struct mlx5e_flow_table {int * t; } ;
struct mlx5e_ttc_table {struct mlx5e_flow_table ft; } ;
struct TYPE_2__ {int ns; } ;
struct mlx5e_priv {TYPE_1__ fs; int mdev; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * mlx5_create_flow_table (int ,int *) ;
 int mlx5e_create_inner_ttc_table_groups (struct mlx5e_ttc_table*) ;
 int mlx5e_destroy_flow_table (struct mlx5e_flow_table*) ;
 int mlx5e_generate_inner_ttc_table_rules (struct mlx5e_priv*,struct ttc_params*,struct mlx5e_ttc_table*) ;
 int mlx5e_tunnel_inner_ft_supported (int ) ;

int mlx5e_create_inner_ttc_table(struct mlx5e_priv *priv, struct ttc_params *params,
     struct mlx5e_ttc_table *ttc)
{
 struct mlx5e_flow_table *ft = &ttc->ft;
 int err;

 if (!mlx5e_tunnel_inner_ft_supported(priv->mdev))
  return 0;

 ft->t = mlx5_create_flow_table(priv->fs.ns, &params->ft_attr);
 if (IS_ERR(ft->t)) {
  err = PTR_ERR(ft->t);
  ft->t = ((void*)0);
  return err;
 }

 err = mlx5e_create_inner_ttc_table_groups(ttc);
 if (err)
  goto err;

 err = mlx5e_generate_inner_ttc_table_rules(priv, params, ttc);
 if (err)
  goto err;

 return 0;

err:
 mlx5e_destroy_flow_table(ft);
 return err;
}
