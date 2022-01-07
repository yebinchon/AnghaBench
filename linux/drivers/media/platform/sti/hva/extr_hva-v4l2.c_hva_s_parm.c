
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ denominator; scalar_t__ numerator; } ;
struct TYPE_7__ {TYPE_2__ timeperframe; int capability; } ;
struct TYPE_8__ {TYPE_3__ output; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_4__ parm; } ;
struct v4l2_fract {scalar_t__ denominator; scalar_t__ numerator; } ;
struct TYPE_5__ {struct v4l2_fract time_per_frame; } ;
struct hva_ctx {TYPE_1__ ctrls; } ;
struct file {int private_data; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_CAP_TIMEPERFRAME ;
 struct hva_ctx* fh_to_ctx (int ) ;
 int hva_g_parm (struct file*,void*,struct v4l2_streamparm*) ;

__attribute__((used)) static int hva_s_parm(struct file *file, void *fh, struct v4l2_streamparm *sp)
{
 struct hva_ctx *ctx = fh_to_ctx(file->private_data);
 struct v4l2_fract *time_per_frame = &ctx->ctrls.time_per_frame;

 if (sp->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return -EINVAL;

 if (!sp->parm.output.timeperframe.numerator ||
     !sp->parm.output.timeperframe.denominator)
  return hva_g_parm(file, fh, sp);

 sp->parm.output.capability = V4L2_CAP_TIMEPERFRAME;
 time_per_frame->numerator = sp->parm.output.timeperframe.numerator;
 time_per_frame->denominator =
  sp->parm.output.timeperframe.denominator;

 return 0;
}
