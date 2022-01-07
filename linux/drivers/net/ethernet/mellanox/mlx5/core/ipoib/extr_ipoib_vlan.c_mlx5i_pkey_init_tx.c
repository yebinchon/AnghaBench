
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5i_priv {int qp; } ;
struct mlx5e_priv {int mdev; struct mlx5i_priv* ppriv; } ;


 int mlx5_core_warn (int ,char*,int) ;
 int mlx5i_create_underlay_qp (int ,int *) ;

__attribute__((used)) static int mlx5i_pkey_init_tx(struct mlx5e_priv *priv)
{
 struct mlx5i_priv *ipriv = priv->ppriv;
 int err;

 err = mlx5i_create_underlay_qp(priv->mdev, &ipriv->qp);
 if (err) {
  mlx5_core_warn(priv->mdev, "create child underlay QP failed, %d\n", err);
  return err;
 }

 return 0;
}
