
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m2m_ctx; } ;
struct pxp_ctx {int dev; TYPE_1__ fh; } ;


 int dprintk (int ,char*) ;
 int v4l2_m2m_num_dst_bufs_ready (int ) ;
 int v4l2_m2m_num_src_bufs_ready (int ) ;

__attribute__((used)) static int pxp_job_ready(void *priv)
{
 struct pxp_ctx *ctx = priv;

 if (v4l2_m2m_num_src_bufs_ready(ctx->fh.m2m_ctx) < 1 ||
     v4l2_m2m_num_dst_bufs_ready(ctx->fh.m2m_ctx) < 1) {
  dprintk(ctx->dev, "Not enough buffers available\n");
  return 0;
 }

 return 1;
}
