
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx5_qp_context {int mtu_msgmax; int rq_size_stride; int log_pg_sz_remote_qpn; int sq_crq_size; int flags; } ;
struct mlx5_core_qp {int pid; } ;
struct mlx5_core_dev {int dummy; } ;


 int GFP_KERNEL ;





 scalar_t__ MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int mlx5_core_qp_query (struct mlx5_core_dev*,struct mlx5_core_qp*,int *,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 scalar_t__ mlx5_qp_state_str (int) ;
 scalar_t__ mlx5_qp_type_str (int) ;
 int qpc ;
 int query_qp_out ;

__attribute__((used)) static u64 qp_read_field(struct mlx5_core_dev *dev, struct mlx5_core_qp *qp,
    int index, int *is_str)
{
 int outlen = MLX5_ST_SZ_BYTES(query_qp_out);
 struct mlx5_qp_context *ctx;
 u64 param = 0;
 u32 *out;
 int err;
 int no_sq;

 out = kzalloc(outlen, GFP_KERNEL);
 if (!out)
  return param;

 err = mlx5_core_qp_query(dev, qp, out, outlen);
 if (err) {
  mlx5_core_warn(dev, "failed to query qp err=%d\n", err);
  goto out;
 }

 *is_str = 0;


 ctx = (struct mlx5_qp_context *)MLX5_ADDR_OF(query_qp_out, out, qpc);

 switch (index) {
 case 132:
  param = qp->pid;
  break;
 case 129:
  param = (unsigned long)mlx5_qp_state_str(be32_to_cpu(ctx->flags) >> 28);
  *is_str = 1;
  break;
 case 128:
  param = (unsigned long)mlx5_qp_type_str((be32_to_cpu(ctx->flags) >> 16) & 0xff);
  *is_str = 1;
  break;
 case 135:
  switch (ctx->mtu_msgmax >> 5) {
  case 139:
   param = 256;
   break;
  case 137:
   param = 512;
   break;
  case 141:
   param = 1024;
   break;
  case 140:
   param = 2048;
   break;
  case 138:
   param = 4096;
   break;
  default:
   param = 0;
  }
  break;
 case 134:
  param = 1 << ((ctx->rq_size_stride >> 3) & 0xf);
  break;
 case 131:
  param = 1 << ((ctx->rq_size_stride & 7) + 4);
  break;
 case 133:
  no_sq = be16_to_cpu(ctx->sq_crq_size) >> 15;
  if (!no_sq)
   param = 1 << (be16_to_cpu(ctx->sq_crq_size) >> 11);
  else
   param = 0;
  break;
 case 136:
  param = (be32_to_cpu(ctx->log_pg_sz_remote_qpn) >> 24) & 0x1f;
  param += 12;
  break;
 case 130:
  param = be32_to_cpu(ctx->log_pg_sz_remote_qpn) & 0xffffff;
  break;
 }

out:
 kfree(out);
 return param;
}
