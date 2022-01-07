
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rqt {int enabled; int rqtn; } ;
struct mlx5e_priv {int mdev; } ;


 int mlx5_core_destroy_rqt (int ,int ) ;

void mlx5e_destroy_rqt(struct mlx5e_priv *priv, struct mlx5e_rqt *rqt)
{
 rqt->enabled = 0;
 mlx5_core_destroy_rqt(priv->mdev, rqt->rqtn);
}
