
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct deinterlace_dev {int m2m_dev; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct deinterlace_ctx {int aborting; TYPE_1__ fh; struct deinterlace_dev* dev; } ;


 int dprintk (struct deinterlace_dev*,char*) ;
 int v4l2_m2m_job_finish (int ,int ) ;

__attribute__((used)) static void deinterlace_job_abort(void *priv)
{
 struct deinterlace_ctx *ctx = priv;
 struct deinterlace_dev *pcdev = ctx->dev;

 ctx->aborting = 1;

 dprintk(pcdev, "Aborting task\n");

 v4l2_m2m_job_finish(pcdev->m2m_dev, ctx->fh.m2m_ctx);
}
