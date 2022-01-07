
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttc_params {int * indir_tirn; int any_tt_tirn; } ;
struct TYPE_6__ {int ttc; int ns; } ;
struct mlx5e_priv {int netdev; TYPE_3__ fs; TYPE_2__* indir_tir; TYPE_1__* direct_tir; int mdev; } ;
struct TYPE_5__ {int tirn; } ;
struct TYPE_4__ {int tirn; } ;


 int MLX5E_NUM_INDIR_TIRS ;
 int MLX5_FLOW_NAMESPACE_KERNEL ;
 int mlx5_get_flow_namespace (int ,int ) ;
 int mlx5e_create_ttc_table (struct mlx5e_priv*,struct ttc_params*,int *) ;
 int mlx5e_set_ttc_ft_params (struct ttc_params*) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static int mlx5e_create_rep_ttc_table(struct mlx5e_priv *priv)
{
 struct ttc_params ttc_params = {};
 int tt, err;

 priv->fs.ns = mlx5_get_flow_namespace(priv->mdev,
           MLX5_FLOW_NAMESPACE_KERNEL);


 ttc_params.any_tt_tirn = priv->direct_tir[0].tirn;
 mlx5e_set_ttc_ft_params(&ttc_params);
 for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++)
  ttc_params.indir_tirn[tt] = priv->indir_tir[tt].tirn;

 err = mlx5e_create_ttc_table(priv, &ttc_params, &priv->fs.ttc);
 if (err) {
  netdev_err(priv->netdev, "Failed to create rep ttc table, err=%d\n", err);
  return err;
 }
 return 0;
}
