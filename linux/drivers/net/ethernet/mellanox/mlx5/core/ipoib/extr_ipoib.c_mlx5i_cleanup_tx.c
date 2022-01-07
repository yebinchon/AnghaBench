
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5i_priv {int qp; } ;
struct mlx5e_priv {int mdev; int ** tisn; struct mlx5i_priv* ppriv; } ;


 int mlx5e_destroy_tis (int ,int ) ;
 int mlx5i_destroy_underlay_qp (int ,int *) ;

__attribute__((used)) static void mlx5i_cleanup_tx(struct mlx5e_priv *priv)
{
 struct mlx5i_priv *ipriv = priv->ppriv;

 mlx5e_destroy_tis(priv->mdev, priv->tisn[0][0]);
 mlx5i_destroy_underlay_qp(priv->mdev, &ipriv->qp);
}
