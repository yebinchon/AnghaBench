
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
struct mlx5_core_cq {int pid; } ;





 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_GET (int ,void*,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int cq_context ;
 int cqc ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int log_cq_size ;
 int log_page_size ;
 int mlx5_core_query_cq (struct mlx5_core_dev*,struct mlx5_core_cq*,int *,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int query_cq_out ;

__attribute__((used)) static u64 cq_read_field(struct mlx5_core_dev *dev, struct mlx5_core_cq *cq,
    int index)
{
 int outlen = MLX5_ST_SZ_BYTES(query_cq_out);
 u64 param = 0;
 void *ctx;
 u32 *out;
 int err;

 out = kvzalloc(outlen, GFP_KERNEL);
 if (!out)
  return param;

 err = mlx5_core_query_cq(dev, cq, out, outlen);
 if (err) {
  mlx5_core_warn(dev, "failed to query cq\n");
  goto out;
 }
 ctx = MLX5_ADDR_OF(query_cq_out, out, cq_context);

 switch (index) {
 case 128:
  param = cq->pid;
  break;
 case 129:
  param = 1 << MLX5_GET(cqc, ctx, log_cq_size);
  break;
 case 130:
  param = MLX5_GET(cqc, ctx, log_page_size);
  break;
 }

out:
 kvfree(out);
 return param;
}
