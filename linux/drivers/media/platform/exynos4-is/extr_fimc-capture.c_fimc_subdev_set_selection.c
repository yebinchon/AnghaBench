
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ pad; int target; scalar_t__ which; struct v4l2_rect r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct fimc_frame {int dummy; } ;
struct TYPE_2__ {struct fimc_ctx* ctx; } ;
struct fimc_dev {int lock; int slock; int state; TYPE_1__ vid_cap; } ;
struct fimc_ctx {int state; struct fimc_frame d_frame; struct fimc_frame s_frame; } ;


 int EINVAL ;
 int FIMC_COMPOSE ;
 scalar_t__ FIMC_SD_PAD_SOURCE ;
 int ST_CAPT_APPLY_CFG ;


 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int dbg (char*,int const,int ,int ,int ,int ) ;
 int fimc_capture_try_selection (struct fimc_ctx*,struct v4l2_rect*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int set_frame_crop (struct fimc_frame*,int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fimc_dev* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct v4l2_rect* v4l2_subdev_get_try_compose (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;

__attribute__((used)) static int fimc_subdev_set_selection(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_selection *sel)
{
 struct fimc_dev *fimc = v4l2_get_subdevdata(sd);
 struct fimc_ctx *ctx = fimc->vid_cap.ctx;
 struct fimc_frame *f = &ctx->s_frame;
 struct v4l2_rect *r = &sel->r;
 struct v4l2_rect *try_sel;
 unsigned long flags;

 if (sel->pad == FIMC_SD_PAD_SOURCE)
  return -EINVAL;

 mutex_lock(&fimc->lock);
 fimc_capture_try_selection(ctx, r, 128);

 switch (sel->target) {
 case 128:
  try_sel = v4l2_subdev_get_try_crop(sd, cfg, sel->pad);
  break;
 case 129:
  try_sel = v4l2_subdev_get_try_compose(sd, cfg, sel->pad);
  f = &ctx->d_frame;
  break;
 default:
  mutex_unlock(&fimc->lock);
  return -EINVAL;
 }

 if (sel->which == V4L2_SUBDEV_FORMAT_TRY) {
  *try_sel = sel->r;
 } else {
  spin_lock_irqsave(&fimc->slock, flags);
  set_frame_crop(f, r->left, r->top, r->width, r->height);
  set_bit(ST_CAPT_APPLY_CFG, &fimc->state);
  if (sel->target == 129)
   ctx->state |= FIMC_COMPOSE;
  spin_unlock_irqrestore(&fimc->slock, flags);
 }

 dbg("target %#x: (%d,%d)/%dx%d", sel->target, r->left, r->top,
     r->width, r->height);

 mutex_unlock(&fimc->lock);
 return 0;
}
