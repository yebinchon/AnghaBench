
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_fract {int denominator; int numerator; } ;
struct TYPE_5__ {struct v4l2_fract timeperframe; int capability; } ;
struct TYPE_6__ {TYPE_2__ output; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_3__ parm; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int framerate; } ;
struct coda_ctx {TYPE_1__ params; } ;


 int CODA_FRATE_DIV_OFFSET ;
 int CODA_FRATE_RES_MASK ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_CAP_TIMEPERFRAME ;
 struct coda_ctx* fh_to_ctx (void*) ;

__attribute__((used)) static int coda_g_parm(struct file *file, void *fh, struct v4l2_streamparm *a)
{
 struct coda_ctx *ctx = fh_to_ctx(fh);
 struct v4l2_fract *tpf;

 if (a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return -EINVAL;

 a->parm.output.capability = V4L2_CAP_TIMEPERFRAME;
 tpf = &a->parm.output.timeperframe;
 tpf->denominator = ctx->params.framerate & CODA_FRATE_RES_MASK;
 tpf->numerator = 1 + (ctx->params.framerate >>
         CODA_FRATE_DIV_OFFSET);

 return 0;
}
