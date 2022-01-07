
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m2m_ctx; } ;
struct vpe_ctx {TYPE_1__ fh; } ;


 scalar_t__ v4l2_m2m_num_dst_bufs_ready (int ) ;
 scalar_t__ v4l2_m2m_num_src_bufs_ready (int ) ;

__attribute__((used)) static int job_ready(void *priv)
{
 struct vpe_ctx *ctx = priv;






 if (v4l2_m2m_num_src_bufs_ready(ctx->fh.m2m_ctx) <= 0 ||
  v4l2_m2m_num_dst_bufs_ready(ctx->fh.m2m_ctx) <= 0)
  return 0;

 return 1;
}
