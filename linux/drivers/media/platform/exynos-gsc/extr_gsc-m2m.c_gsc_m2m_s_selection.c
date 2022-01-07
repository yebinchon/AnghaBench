
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int height; int width; } ;
struct v4l2_selection {scalar_t__ type; int flags; int target; TYPE_4__ r; } ;
struct gsc_variant {int dummy; } ;
struct gsc_frame {TYPE_4__ crop; } ;
struct TYPE_8__ {TYPE_2__* rotate; } ;
struct gsc_ctx {int out_path; TYPE_3__ gsc_ctrls; struct gsc_frame s_frame; struct gsc_frame d_frame; TYPE_1__* gsc_dev; } ;
struct file {int dummy; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_6__ {struct gsc_variant* variant; } ;


 int EINVAL ;
 int ERANGE ;
 int GSC_DST_FMT ;
 int GSC_PARAMS ;
 int GSC_SRC_FMT ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int V4L2_SEL_FLAG_GE ;
 int V4L2_SEL_FLAG_LE ;






 struct gsc_ctx* fh_to_ctx (void*) ;
 int gsc_check_scaler_ratio (struct gsc_variant*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ gsc_ctx_state_is_set (int,struct gsc_ctx*) ;
 int gsc_ctx_state_lock_set (int ,struct gsc_ctx*) ;
 int gsc_try_selection (struct gsc_ctx*,struct v4l2_selection*) ;
 int is_rectangle_enclosed (TYPE_4__*,TYPE_4__*) ;
 int pr_err (char*) ;

__attribute__((used)) static int gsc_m2m_s_selection(struct file *file, void *fh,
    struct v4l2_selection *s)
{
 struct gsc_frame *frame;
 struct gsc_ctx *ctx = fh_to_ctx(fh);
 struct gsc_variant *variant = ctx->gsc_dev->variant;
 struct v4l2_selection sel = *s;
 int ret;

 if ((s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) &&
     (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT))
  return -EINVAL;

 ret = gsc_try_selection(ctx, &sel);
 if (ret)
  return ret;

 if (s->flags & V4L2_SEL_FLAG_LE &&
     !is_rectangle_enclosed(&sel.r, &s->r))
  return -ERANGE;

 if (s->flags & V4L2_SEL_FLAG_GE &&
     !is_rectangle_enclosed(&s->r, &sel.r))
  return -ERANGE;

 s->r = sel.r;

 switch (s->target) {
 case 132:
 case 131:
 case 133:
  frame = &ctx->s_frame;
  break;

 case 129:
 case 130:
 case 128:
  frame = &ctx->d_frame;
  break;

 default:
  return -EINVAL;
 }


 if (gsc_ctx_state_is_set(GSC_DST_FMT | GSC_SRC_FMT, ctx)) {
  if (s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
   ret = gsc_check_scaler_ratio(variant, sel.r.width,
    sel.r.height, ctx->d_frame.crop.width,
    ctx->d_frame.crop.height,
    ctx->gsc_ctrls.rotate->val, ctx->out_path);
  } else {
   ret = gsc_check_scaler_ratio(variant,
    ctx->s_frame.crop.width,
    ctx->s_frame.crop.height, sel.r.width,
    sel.r.height, ctx->gsc_ctrls.rotate->val,
    ctx->out_path);
  }

  if (ret) {
   pr_err("Out of scaler range");
   return -EINVAL;
  }
 }

 frame->crop = sel.r;

 gsc_ctx_state_lock_set(GSC_PARAMS, ctx);
 return 0;
}
