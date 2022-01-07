
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; } ;
struct fdp1_q_data {TYPE_1__ format; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct fdp1_ctx {int fdp1; TYPE_2__ fh; struct fdp1_q_data out_q; } ;


 scalar_t__ V4L2_FIELD_HAS_BOTH (int ) ;
 int dprintk (int ,char*,...) ;
 int v4l2_m2m_num_dst_bufs_ready (int ) ;
 int v4l2_m2m_num_src_bufs_ready (int ) ;

__attribute__((used)) static int fdp1_m2m_job_ready(void *priv)
{
 struct fdp1_ctx *ctx = priv;
 struct fdp1_q_data *src_q_data = &ctx->out_q;
 int srcbufs = 1;
 int dstbufs = 1;

 dprintk(ctx->fdp1, "+ Src: %d : Dst: %d\n",
  v4l2_m2m_num_src_bufs_ready(ctx->fh.m2m_ctx),
  v4l2_m2m_num_dst_bufs_ready(ctx->fh.m2m_ctx));


 if (V4L2_FIELD_HAS_BOTH(src_q_data->format.field))
  dstbufs = 2;

 if (v4l2_m2m_num_src_bufs_ready(ctx->fh.m2m_ctx) < srcbufs
     || v4l2_m2m_num_dst_bufs_ready(ctx->fh.m2m_ctx) < dstbufs) {
  dprintk(ctx->fdp1, "Not enough buffers available\n");
  return 0;
 }

 return 1;
}
