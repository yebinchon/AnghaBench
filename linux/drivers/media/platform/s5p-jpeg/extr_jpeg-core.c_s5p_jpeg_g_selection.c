
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int top; int left; int height; int width; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_2__ r; } ;
struct TYPE_6__ {int top; int left; int height; int width; } ;
struct TYPE_4__ {int h; int w; } ;
struct s5p_jpeg_ctx {TYPE_3__ crop_rect; TYPE_1__ out_q; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;







 struct s5p_jpeg_ctx* fh_to_ctx (void*) ;

__attribute__((used)) static int s5p_jpeg_g_selection(struct file *file, void *priv,
    struct v4l2_selection *s)
{
 struct s5p_jpeg_ctx *ctx = fh_to_ctx(priv);

 if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT &&
     s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;


 switch (s->target) {
 case 130:
 case 129:
 case 128:
 case 132:
  s->r.width = ctx->out_q.w;
  s->r.height = ctx->out_q.h;
  s->r.left = 0;
  s->r.top = 0;
  break;
 case 134:
 case 133:
 case 131:
  s->r.width = ctx->crop_rect.width;
  s->r.height = ctx->crop_rect.height;
  s->r.left = ctx->crop_rect.left;
  s->r.top = ctx->crop_rect.top;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
