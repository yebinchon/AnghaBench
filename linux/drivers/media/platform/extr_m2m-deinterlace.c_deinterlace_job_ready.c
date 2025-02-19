
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct deinterlace_dev {int busy; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct deinterlace_ctx {struct deinterlace_dev* dev; TYPE_1__ fh; } ;


 int atomic_read (int *) ;
 int dprintk (struct deinterlace_dev*,char*) ;
 scalar_t__ v4l2_m2m_num_dst_bufs_ready (int ) ;
 scalar_t__ v4l2_m2m_num_src_bufs_ready (int ) ;

__attribute__((used)) static int deinterlace_job_ready(void *priv)
{
 struct deinterlace_ctx *ctx = priv;
 struct deinterlace_dev *pcdev = ctx->dev;

 if (v4l2_m2m_num_src_bufs_ready(ctx->fh.m2m_ctx) > 0 &&
     v4l2_m2m_num_dst_bufs_ready(ctx->fh.m2m_ctx) > 0 &&
     !atomic_read(&ctx->dev->busy)) {
  dprintk(pcdev, "Task ready\n");
  return 1;
 }

 dprintk(pcdev, "Task not ready to run\n");

 return 0;
}
