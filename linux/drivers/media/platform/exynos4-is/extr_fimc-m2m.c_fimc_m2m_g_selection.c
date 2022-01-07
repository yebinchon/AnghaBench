
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int top; int left; } ;
struct v4l2_selection {int target; TYPE_1__ r; int type; } ;
struct fimc_frame {int o_height; int o_width; int height; int width; int offs_v; int offs_h; } ;
struct fimc_ctx {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct fimc_frame*) ;
 int PTR_ERR (struct fimc_frame*) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;






 struct fimc_frame* ctx_get_frame (struct fimc_ctx*,int ) ;
 struct fimc_ctx* fh_to_ctx (void*) ;

__attribute__((used)) static int fimc_m2m_g_selection(struct file *file, void *fh,
    struct v4l2_selection *s)
{
 struct fimc_ctx *ctx = fh_to_ctx(fh);
 struct fimc_frame *frame;

 frame = ctx_get_frame(ctx, s->type);
 if (IS_ERR(frame))
  return PTR_ERR(frame);

 switch (s->target) {
 case 130:
 case 128:
 case 129:
  if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  break;
 case 133:
 case 131:
 case 132:
  if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 switch (s->target) {
 case 130:
 case 133:
  s->r.left = frame->offs_h;
  s->r.top = frame->offs_v;
  s->r.width = frame->width;
  s->r.height = frame->height;
  break;
 case 128:
 case 129:
 case 131:
 case 132:
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = frame->o_width;
  s->r.height = frame->o_height;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
