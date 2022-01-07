
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m2m_ctx; } ;
struct vim2m_ctx {scalar_t__ translen; int dev; TYPE_1__ fh; } ;


 int dprintk (int ,int,char*) ;
 scalar_t__ v4l2_m2m_num_dst_bufs_ready (int ) ;
 scalar_t__ v4l2_m2m_num_src_bufs_ready (int ) ;

__attribute__((used)) static int job_ready(void *priv)
{
 struct vim2m_ctx *ctx = priv;

 if (v4l2_m2m_num_src_bufs_ready(ctx->fh.m2m_ctx) < ctx->translen
     || v4l2_m2m_num_dst_bufs_ready(ctx->fh.m2m_ctx) < ctx->translen) {
  dprintk(ctx->dev, 1, "Not enough buffers available\n");
  return 0;
 }

 return 1;
}
