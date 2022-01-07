
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5e_rqt {int enabled; int rqtn; } ;
struct TYPE_2__ {int rqn; } ;
struct mlx5e_priv {TYPE_1__ drop_rq; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int create_rqt_in ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int mlx5_core_create_rqt (struct mlx5_core_dev*,int *,int,int *) ;
 int * rq_num ;
 int rqt_actual_size ;
 int rqt_context ;
 int rqt_max_size ;

__attribute__((used)) static int
mlx5e_create_rqt(struct mlx5e_priv *priv, int sz, struct mlx5e_rqt *rqt)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 void *rqtc;
 int inlen;
 int err;
 u32 *in;
 int i;

 inlen = MLX5_ST_SZ_BYTES(create_rqt_in) + sizeof(u32) * sz;
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 rqtc = MLX5_ADDR_OF(create_rqt_in, in, rqt_context);

 MLX5_SET(rqtc, rqtc, rqt_actual_size, sz);
 MLX5_SET(rqtc, rqtc, rqt_max_size, sz);

 for (i = 0; i < sz; i++)
  MLX5_SET(rqtc, rqtc, rq_num[i], priv->drop_rq.rqn);

 err = mlx5_core_create_rqt(mdev, in, inlen, &rqt->rqtn);
 if (!err)
  rqt->enabled = 1;

 kvfree(in);
 return err;
}
