
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int height; int width; int top; int left; } ;
struct v4l2_selection {scalar_t__ type; int flags; struct v4l2_rect r; int target; } ;
struct fimc_frame {int dummy; } ;
struct TYPE_2__ {struct fimc_ctx* ctx; } ;
struct fimc_dev {int state; int slock; TYPE_1__ vid_cap; } ;
struct fimc_ctx {struct fimc_frame s_frame; struct fimc_frame d_frame; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ERANGE ;
 int ST_CAPT_APPLY_CFG ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_SEL_FLAG_GE ;
 int V4L2_SEL_FLAG_LE ;
 int V4L2_SEL_TGT_COMPOSE ;
 int V4L2_SEL_TGT_CROP ;
 int enclosed_rectangle (struct v4l2_rect*,struct v4l2_rect*) ;
 int fimc_capture_try_selection (struct fimc_ctx*,struct v4l2_rect*,int ) ;
 int set_bit (int ,int *) ;
 int set_frame_crop (struct fimc_frame*,int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fimc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_cap_s_selection(struct file *file, void *fh,
    struct v4l2_selection *s)
{
 struct fimc_dev *fimc = video_drvdata(file);
 struct fimc_ctx *ctx = fimc->vid_cap.ctx;
 struct v4l2_rect rect = s->r;
 struct fimc_frame *f;
 unsigned long flags;

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 if (s->target == V4L2_SEL_TGT_COMPOSE)
  f = &ctx->d_frame;
 else if (s->target == V4L2_SEL_TGT_CROP)
  f = &ctx->s_frame;
 else
  return -EINVAL;

 fimc_capture_try_selection(ctx, &rect, s->target);

 if (s->flags & V4L2_SEL_FLAG_LE &&
     !enclosed_rectangle(&rect, &s->r))
  return -ERANGE;

 if (s->flags & V4L2_SEL_FLAG_GE &&
     !enclosed_rectangle(&s->r, &rect))
  return -ERANGE;

 s->r = rect;
 spin_lock_irqsave(&fimc->slock, flags);
 set_frame_crop(f, s->r.left, s->r.top, s->r.width,
         s->r.height);
 spin_unlock_irqrestore(&fimc->slock, flags);

 set_bit(ST_CAPT_APPLY_CFG, &fimc->state);
 return 0;
}
