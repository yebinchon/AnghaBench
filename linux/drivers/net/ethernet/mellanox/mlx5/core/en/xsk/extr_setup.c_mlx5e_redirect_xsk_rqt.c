
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_4__ {int rqn; } ;
struct mlx5e_redirect_rqt_param {int is_rss; TYPE_1__ member_1; } ;
struct mlx5e_priv {TYPE_3__* xsk_tir; } ;
struct TYPE_5__ {int rqtn; } ;
struct TYPE_6__ {TYPE_2__ rqt; } ;


 int mlx5e_redirect_rqt (struct mlx5e_priv*,int ,int,struct mlx5e_redirect_rqt_param) ;

__attribute__((used)) static int mlx5e_redirect_xsk_rqt(struct mlx5e_priv *priv, u16 ix, u32 rqn)
{
 struct mlx5e_redirect_rqt_param direct_rrp = {
  .is_rss = 0,
  {
   .rqn = rqn,
  },
 };

 u32 rqtn = priv->xsk_tir[ix].rqt.rqtn;

 return mlx5e_redirect_rqt(priv, rqtn, 1, direct_rrp);
}
