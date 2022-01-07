
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rqn; } ;
struct mlx5e_redirect_rqt_param {int is_rss; TYPE_2__ member_1; } ;
struct TYPE_3__ {int rqn; } ;
struct mlx5e_priv {TYPE_1__ drop_rq; } ;


 int mlx5e_redirect_rqts (struct mlx5e_priv*,struct mlx5e_redirect_rqt_param) ;

__attribute__((used)) static void mlx5e_redirect_rqts_to_drop(struct mlx5e_priv *priv)
{
 struct mlx5e_redirect_rqt_param drop_rrp = {
  .is_rss = 0,
  {
   .rqn = priv->drop_rq.rqn,
  },
 };

 mlx5e_redirect_rqts(priv, drop_rrp);
}
