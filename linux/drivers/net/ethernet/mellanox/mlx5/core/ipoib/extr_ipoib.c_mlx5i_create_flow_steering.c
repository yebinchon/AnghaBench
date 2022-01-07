
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ttc_params {int * indir_tirn; } ;
struct TYPE_7__ {int inner_ttc; int ttc; int ns; } ;
struct mlx5e_priv {TYPE_3__ fs; TYPE_4__* netdev; TYPE_2__* indir_tir; TYPE_1__* inner_indir_tir; int mdev; } ;
struct TYPE_8__ {int hw_features; } ;
struct TYPE_6__ {int tirn; } ;
struct TYPE_5__ {int tirn; } ;


 int EINVAL ;
 int MLX5E_NUM_INDIR_TIRS ;
 int MLX5_FLOW_NAMESPACE_KERNEL ;
 int NETIF_F_NTUPLE ;
 int mlx5_get_flow_namespace (int ,int ) ;
 int mlx5e_arfs_create_tables (struct mlx5e_priv*) ;
 int mlx5e_arfs_destroy_tables (struct mlx5e_priv*) ;
 int mlx5e_create_inner_ttc_table (struct mlx5e_priv*,struct ttc_params*,int *) ;
 int mlx5e_create_ttc_table (struct mlx5e_priv*,struct ttc_params*,int *) ;
 int mlx5e_destroy_inner_ttc_table (struct mlx5e_priv*,int *) ;
 int mlx5e_set_inner_ttc_ft_params (struct ttc_params*) ;
 int mlx5e_set_ttc_basic_params (struct mlx5e_priv*,struct ttc_params*) ;
 int mlx5e_set_ttc_ft_params (struct ttc_params*) ;
 int netdev_err (TYPE_4__*,char*,int) ;

__attribute__((used)) static int mlx5i_create_flow_steering(struct mlx5e_priv *priv)
{
 struct ttc_params ttc_params = {};
 int tt, err;

 priv->fs.ns = mlx5_get_flow_namespace(priv->mdev,
            MLX5_FLOW_NAMESPACE_KERNEL);

 if (!priv->fs.ns)
  return -EINVAL;

 err = mlx5e_arfs_create_tables(priv);
 if (err) {
  netdev_err(priv->netdev, "Failed to create arfs tables, err=%d\n",
      err);
  priv->netdev->hw_features &= ~NETIF_F_NTUPLE;
 }

 mlx5e_set_ttc_basic_params(priv, &ttc_params);
 mlx5e_set_inner_ttc_ft_params(&ttc_params);
 for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++)
  ttc_params.indir_tirn[tt] = priv->inner_indir_tir[tt].tirn;

 err = mlx5e_create_inner_ttc_table(priv, &ttc_params, &priv->fs.inner_ttc);
 if (err) {
  netdev_err(priv->netdev, "Failed to create inner ttc table, err=%d\n",
      err);
  goto err_destroy_arfs_tables;
 }

 mlx5e_set_ttc_ft_params(&ttc_params);
 for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++)
  ttc_params.indir_tirn[tt] = priv->indir_tir[tt].tirn;

 err = mlx5e_create_ttc_table(priv, &ttc_params, &priv->fs.ttc);
 if (err) {
  netdev_err(priv->netdev, "Failed to create ttc table, err=%d\n",
      err);
  goto err_destroy_inner_ttc_table;
 }

 return 0;

err_destroy_inner_ttc_table:
 mlx5e_destroy_inner_ttc_table(priv, &priv->fs.inner_ttc);
err_destroy_arfs_tables:
 mlx5e_arfs_destroy_tables(priv);

 return err;
}
