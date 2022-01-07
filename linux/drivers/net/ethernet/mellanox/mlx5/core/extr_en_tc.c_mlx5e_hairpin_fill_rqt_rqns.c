
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ hfunc; } ;
struct mlx5e_priv {TYPE_1__ rss_params; } ;
struct mlx5e_hairpin {TYPE_2__* pair; int num_channels; struct mlx5e_priv* func_priv; } ;
struct TYPE_4__ {int* rqn; } ;


 scalar_t__ ETH_RSS_HASH_XOR ;
 int MLX5E_INDIR_RQT_SIZE ;
 int MLX5_SET (void*,void*,int ,int) ;
 int ilog2 (int) ;
 int mlx5e_bits_invert (int,int ) ;
 int mlx5e_build_default_indir_rqt (int*,int,int ) ;
 int * rq_num ;

__attribute__((used)) static void mlx5e_hairpin_fill_rqt_rqns(struct mlx5e_hairpin *hp, void *rqtc)
{
 u32 indirection_rqt[MLX5E_INDIR_RQT_SIZE], rqn;
 struct mlx5e_priv *priv = hp->func_priv;
 int i, ix, sz = MLX5E_INDIR_RQT_SIZE;

 mlx5e_build_default_indir_rqt(indirection_rqt, sz,
          hp->num_channels);

 for (i = 0; i < sz; i++) {
  ix = i;
  if (priv->rss_params.hfunc == ETH_RSS_HASH_XOR)
   ix = mlx5e_bits_invert(i, ilog2(sz));
  ix = indirection_rqt[ix];
  rqn = hp->pair->rqn[ix];
  MLX5_SET(rqtc, rqtc, rq_num[i], rqn);
 }
}
