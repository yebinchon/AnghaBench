
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttc_params {int ft_attr; } ;
struct mlx5e_flow_table {int * t; } ;
struct mlx5e_ttc_table {struct mlx5e_flow_table ft; } ;
struct TYPE_3__ {int ns; } ;
struct mlx5e_priv {TYPE_1__ fs; int mdev; } ;
struct TYPE_4__ {int outer_ip_version; } ;


 scalar_t__ IS_ERR (int *) ;
 int MLX5_CAP_FLOWTABLE_NIC_RX (int ,int ) ;
 int PTR_ERR (int *) ;
 TYPE_2__ ft_field_support ;
 int * mlx5_create_flow_table (int ,int *) ;
 int mlx5e_create_ttc_table_groups (struct mlx5e_ttc_table*,int) ;
 int mlx5e_destroy_flow_table (struct mlx5e_flow_table*) ;
 int mlx5e_generate_ttc_table_rules (struct mlx5e_priv*,struct ttc_params*,struct mlx5e_ttc_table*) ;

int mlx5e_create_ttc_table(struct mlx5e_priv *priv, struct ttc_params *params,
      struct mlx5e_ttc_table *ttc)
{
 bool match_ipv_outer = MLX5_CAP_FLOWTABLE_NIC_RX(priv->mdev, ft_field_support.outer_ip_version);
 struct mlx5e_flow_table *ft = &ttc->ft;
 int err;

 ft->t = mlx5_create_flow_table(priv->fs.ns, &params->ft_attr);
 if (IS_ERR(ft->t)) {
  err = PTR_ERR(ft->t);
  ft->t = ((void*)0);
  return err;
 }

 err = mlx5e_create_ttc_table_groups(ttc, match_ipv_outer);
 if (err)
  goto err;

 err = mlx5e_generate_ttc_table_rules(priv, params, ttc);
 if (err)
  goto err;

 return 0;
err:
 mlx5e_destroy_flow_table(ft);
 return err;
}
