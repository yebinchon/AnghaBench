
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qpn; } ;
struct mlx5i_priv {TYPE_1__ qp; } ;
struct mlx5e_priv {int mdev; int ** tisn; struct mlx5i_priv* ppriv; } ;


 int mlx5_core_warn (int ,char*,int) ;
 int mlx5i_create_tis (int ,int ,int *) ;
 int mlx5i_create_underlay_qp (int ,TYPE_1__*) ;
 int mlx5i_destroy_underlay_qp (int ,TYPE_1__*) ;

__attribute__((used)) static int mlx5i_init_tx(struct mlx5e_priv *priv)
{
 struct mlx5i_priv *ipriv = priv->ppriv;
 int err;

 err = mlx5i_create_underlay_qp(priv->mdev, &ipriv->qp);
 if (err) {
  mlx5_core_warn(priv->mdev, "create underlay QP failed, %d\n", err);
  return err;
 }

 err = mlx5i_create_tis(priv->mdev, ipriv->qp.qpn, &priv->tisn[0][0]);
 if (err) {
  mlx5_core_warn(priv->mdev, "create tis failed, %d\n", err);
  goto err_destroy_underlay_qp;
 }

 return 0;

err_destroy_underlay_qp:
 mlx5i_destroy_underlay_qp(priv->mdev, &ipriv->qp);
 return err;
}
