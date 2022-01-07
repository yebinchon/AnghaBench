
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx5_eq {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;





 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_GET (int ,void*,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int eq_context_entry ;
 int eqc ;
 int intr ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int log_eq_size ;
 int log_page_size ;
 int mlx5_core_eq_query (struct mlx5_core_dev*,struct mlx5_eq*,int *,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int query_eq_out ;

__attribute__((used)) static u64 eq_read_field(struct mlx5_core_dev *dev, struct mlx5_eq *eq,
    int index)
{
 int outlen = MLX5_ST_SZ_BYTES(query_eq_out);
 u64 param = 0;
 void *ctx;
 u32 *out;
 int err;

 out = kzalloc(outlen, GFP_KERNEL);
 if (!out)
  return param;

 err = mlx5_core_eq_query(dev, eq, out, outlen);
 if (err) {
  mlx5_core_warn(dev, "failed to query eq\n");
  goto out;
 }
 ctx = MLX5_ADDR_OF(query_eq_out, out, eq_context_entry);

 switch (index) {
 case 128:
  param = 1 << MLX5_GET(eqc, ctx, log_eq_size);
  break;
 case 130:
  param = MLX5_GET(eqc, ctx, intr);
  break;
 case 129:
  param = MLX5_GET(eqc, ctx, log_page_size) + 12;
  break;
 }

out:
 kfree(out);
 return param;
}
