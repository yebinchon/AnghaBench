
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; int top; int left; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_2__ r; } ;
struct fimc_frame {int height; int width; int offs_v; int offs_h; int o_height; int o_width; } ;
struct TYPE_3__ {struct fimc_ctx* ctx; } ;
struct fimc_dev {TYPE_1__ vid_cap; } ;
struct fimc_ctx {struct fimc_frame d_frame; struct fimc_frame s_frame; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;






 struct fimc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_cap_g_selection(struct file *file, void *fh,
    struct v4l2_selection *s)
{
 struct fimc_dev *fimc = video_drvdata(file);
 struct fimc_ctx *ctx = fimc->vid_cap.ctx;
 struct fimc_frame *f = &ctx->s_frame;

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 switch (s->target) {
 case 131:
 case 132:
  f = &ctx->d_frame;

 case 129:
 case 128:
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = f->o_width;
  s->r.height = f->o_height;
  return 0;

 case 133:
  f = &ctx->d_frame;

 case 130:
  s->r.left = f->offs_h;
  s->r.top = f->offs_v;
  s->r.width = f->width;
  s->r.height = f->height;
  return 0;
 }

 return -EINVAL;
}
