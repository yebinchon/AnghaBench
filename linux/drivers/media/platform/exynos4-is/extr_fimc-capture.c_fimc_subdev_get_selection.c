
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ pad; int target; scalar_t__ which; struct v4l2_rect r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct fimc_frame {int f_height; int f_width; int height; int width; int offs_v; int offs_h; int o_height; int o_width; } ;
struct TYPE_2__ {struct fimc_ctx* ctx; } ;
struct fimc_dev {int lock; TYPE_1__ vid_cap; } ;
struct fimc_ctx {struct fimc_frame d_frame; struct fimc_frame s_frame; } ;


 int EINVAL ;
 scalar_t__ FIMC_SD_PAD_SOURCE ;




 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int dbg (char*,scalar_t__,int ,int ,int ,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fimc_dev* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct v4l2_rect* v4l2_subdev_get_try_compose (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;

__attribute__((used)) static int fimc_subdev_get_selection(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_selection *sel)
{
 struct fimc_dev *fimc = v4l2_get_subdevdata(sd);
 struct fimc_ctx *ctx = fimc->vid_cap.ctx;
 struct fimc_frame *f = &ctx->s_frame;
 struct v4l2_rect *r = &sel->r;
 struct v4l2_rect *try_sel;

 if (sel->pad == FIMC_SD_PAD_SOURCE)
  return -EINVAL;

 mutex_lock(&fimc->lock);

 switch (sel->target) {
 case 130:
  f = &ctx->d_frame;

 case 128:
  r->width = f->o_width;
  r->height = f->o_height;
  r->left = 0;
  r->top = 0;
  mutex_unlock(&fimc->lock);
  return 0;

 case 129:
  try_sel = v4l2_subdev_get_try_crop(sd, cfg, sel->pad);
  break;
 case 131:
  try_sel = v4l2_subdev_get_try_compose(sd, cfg, sel->pad);
  f = &ctx->d_frame;
  break;
 default:
  mutex_unlock(&fimc->lock);
  return -EINVAL;
 }

 if (sel->which == V4L2_SUBDEV_FORMAT_TRY) {
  sel->r = *try_sel;
 } else {
  r->left = f->offs_h;
  r->top = f->offs_v;
  r->width = f->width;
  r->height = f->height;
 }

 dbg("target %#x: l:%d, t:%d, %dx%d, f_w: %d, f_h: %d",
     sel->pad, r->left, r->top, r->width, r->height,
     f->f_width, f->f_height);

 mutex_unlock(&fimc->lock);
 return 0;
}
