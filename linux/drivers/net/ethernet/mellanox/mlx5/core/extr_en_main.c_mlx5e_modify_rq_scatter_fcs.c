
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {int rqn; struct mlx5e_channel* channel; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5e_channel {struct mlx5e_priv* priv; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_SCATTER_FCS ;
 int MLX5_RQC_STATE_RDY ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_SET64 (void*,void*,int ,int ) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int ctx ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_core_modify_rq (struct mlx5_core_dev*,int ,void*,int) ;
 int modify_bitmask ;
 void* modify_rq_in ;
 int rq_state ;
 int scatter_fcs ;
 int state ;

__attribute__((used)) static int mlx5e_modify_rq_scatter_fcs(struct mlx5e_rq *rq, bool enable)
{
 struct mlx5e_channel *c = rq->channel;
 struct mlx5e_priv *priv = c->priv;
 struct mlx5_core_dev *mdev = priv->mdev;

 void *in;
 void *rqc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(modify_rq_in);
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 rqc = MLX5_ADDR_OF(modify_rq_in, in, ctx);

 MLX5_SET(modify_rq_in, in, rq_state, MLX5_RQC_STATE_RDY);
 MLX5_SET64(modify_rq_in, in, modify_bitmask,
     MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_SCATTER_FCS);
 MLX5_SET(rqc, rqc, scatter_fcs, enable);
 MLX5_SET(rqc, rqc, state, MLX5_RQC_STATE_RDY);

 err = mlx5_core_modify_rq(mdev, rq->rqn, in, inlen);

 kvfree(in);

 return err;
}
