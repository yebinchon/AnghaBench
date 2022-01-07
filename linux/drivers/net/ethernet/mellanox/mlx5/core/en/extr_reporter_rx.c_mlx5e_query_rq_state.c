
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_GET (void*,void*,int *) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_core_query_rq (struct mlx5_core_dev*,int ,void*) ;
 int query_rq_out ;
 int rq_context ;

__attribute__((used)) static int mlx5e_query_rq_state(struct mlx5_core_dev *dev, u32 rqn, u8 *state)
{
 int outlen = MLX5_ST_SZ_BYTES(query_rq_out);
 void *out;
 void *rqc;
 int err;

 out = kvzalloc(outlen, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 err = mlx5_core_query_rq(dev, rqn, out);
 if (err)
  goto out;

 rqc = MLX5_ADDR_OF(query_rq_out, out, rq_context);
 *state = MLX5_GET(rqc, rqc, state);

out:
 kvfree(out);
 return err;
}
