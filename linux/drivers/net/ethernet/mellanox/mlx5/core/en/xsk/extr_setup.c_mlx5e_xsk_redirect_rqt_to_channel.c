
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int rqn; } ;
struct mlx5e_channel {TYPE_1__ xskrq; int ix; } ;


 int mlx5e_redirect_xsk_rqt (struct mlx5e_priv*,int ,int ) ;

int mlx5e_xsk_redirect_rqt_to_channel(struct mlx5e_priv *priv, struct mlx5e_channel *c)
{
 return mlx5e_redirect_xsk_rqt(priv, c->ix, c->xskrq.rqn);
}
