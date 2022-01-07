
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rqn; } ;
struct mlx5e_priv {TYPE_1__ drop_rq; } ;


 int mlx5e_redirect_xsk_rqt (struct mlx5e_priv*,int ,int ) ;

int mlx5e_xsk_redirect_rqt_to_drop(struct mlx5e_priv *priv, u16 ix)
{
 return mlx5e_redirect_xsk_rqt(priv, ix, priv->drop_rq.rqn);
}
