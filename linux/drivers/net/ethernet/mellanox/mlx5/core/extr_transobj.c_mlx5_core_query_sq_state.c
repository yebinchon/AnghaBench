
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
 int mlx5_core_query_sq (struct mlx5_core_dev*,int ,void*) ;
 int query_sq_out ;
 int sq_context ;

int mlx5_core_query_sq_state(struct mlx5_core_dev *dev, u32 sqn, u8 *state)
{
 void *out;
 void *sqc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(query_sq_out);
 out = kvzalloc(inlen, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 err = mlx5_core_query_sq(dev, sqn, out);
 if (err)
  goto out;

 sqc = MLX5_ADDR_OF(query_sq_out, out, sq_context);
 *state = MLX5_GET(sqc, sqc, state);

out:
 kvfree(out);
 return err;
}
