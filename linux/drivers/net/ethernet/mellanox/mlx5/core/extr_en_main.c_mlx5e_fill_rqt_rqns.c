
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
struct TYPE_10__ {scalar_t__ hfunc; TYPE_4__* channels; } ;
struct mlx5e_redirect_rqt_param {int rqn; TYPE_5__ rss; scalar_t__ is_rss; } ;
struct TYPE_6__ {int* indirection_rqt; } ;
struct mlx5e_priv {TYPE_1__ rss_params; } ;
struct TYPE_9__ {TYPE_3__** c; } ;
struct TYPE_7__ {int rqn; } ;
struct TYPE_8__ {TYPE_2__ rq; } ;


 scalar_t__ ETH_RSS_HASH_XOR ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int ilog2 (int) ;
 int mlx5e_bits_invert (int,int ) ;
 int * rq_num ;

__attribute__((used)) static void mlx5e_fill_rqt_rqns(struct mlx5e_priv *priv, int sz,
    struct mlx5e_redirect_rqt_param rrp, void *rqtc)
{
 int i;

 for (i = 0; i < sz; i++) {
  u32 rqn;

  if (rrp.is_rss) {
   int ix = i;

   if (rrp.rss.hfunc == ETH_RSS_HASH_XOR)
    ix = mlx5e_bits_invert(i, ilog2(sz));

   ix = priv->rss_params.indirection_rqt[ix];
   rqn = rrp.rss.channels->c[ix]->rq.rqn;
  } else {
   rqn = rrp.rqn;
  }
  MLX5_SET(rqtc, rqtc, rq_num[i], rqn);
 }
}
