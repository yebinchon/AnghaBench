
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {int rqn; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int ctx ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_core_modify_rq (struct mlx5_core_dev*,int ,void*,int) ;
 void* modify_rq_in ;
 int rq_state ;
 int state ;

int mlx5e_modify_rq_state(struct mlx5e_rq *rq, int curr_state, int next_state)
{
 struct mlx5_core_dev *mdev = rq->mdev;

 void *in;
 void *rqc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(modify_rq_in);
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 rqc = MLX5_ADDR_OF(modify_rq_in, in, ctx);

 MLX5_SET(modify_rq_in, in, rq_state, curr_state);
 MLX5_SET(rqc, rqc, state, next_state);

 err = mlx5_core_modify_rq(mdev, rq->rqn, in, inlen);

 kvfree(in);

 return err;
}
