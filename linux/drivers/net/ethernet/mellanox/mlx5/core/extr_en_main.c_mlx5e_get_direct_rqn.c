
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {TYPE_4__* channels; } ;
struct mlx5e_redirect_rqt_param {TYPE_5__ rss; int rqn; int is_rss; } ;
struct TYPE_6__ {int rqn; } ;
struct mlx5e_priv {TYPE_1__ drop_rq; } ;
struct TYPE_9__ {int num; TYPE_3__** c; } ;
struct TYPE_7__ {int rqn; } ;
struct TYPE_8__ {TYPE_2__ rq; } ;



__attribute__((used)) static u32 mlx5e_get_direct_rqn(struct mlx5e_priv *priv, int ix,
    struct mlx5e_redirect_rqt_param rrp)
{
 if (!rrp.is_rss)
  return rrp.rqn;

 if (ix >= rrp.rss.channels->num)
  return priv->drop_rq.rqn;

 return rrp.rss.channels->c[ix]->rq.rqn;
}
