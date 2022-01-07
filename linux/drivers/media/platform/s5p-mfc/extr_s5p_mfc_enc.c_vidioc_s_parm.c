
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numerator; int denominator; } ;
struct TYPE_8__ {TYPE_2__ timeperframe; } ;
struct TYPE_7__ {TYPE_4__ output; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_3__ parm; } ;
struct TYPE_5__ {int rc_framerate_denom; int rc_framerate_num; } ;
struct s5p_mfc_ctx {TYPE_1__ enc_params; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct s5p_mfc_ctx* fh_to_ctx (void*) ;
 int mfc_err (char*) ;

__attribute__((used)) static int vidioc_s_parm(struct file *file, void *priv,
    struct v4l2_streamparm *a)
{
 struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);

 if (a->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  ctx->enc_params.rc_framerate_num =
     a->parm.output.timeperframe.denominator;
  ctx->enc_params.rc_framerate_denom =
     a->parm.output.timeperframe.numerator;
 } else {
  mfc_err("Setting FPS is only possible for the output queue\n");
  return -EINVAL;
 }
 return 0;
}
