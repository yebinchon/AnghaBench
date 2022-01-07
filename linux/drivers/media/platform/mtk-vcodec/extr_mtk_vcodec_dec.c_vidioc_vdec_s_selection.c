
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; int top; int left; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_2__ r; } ;
struct TYPE_3__ {int pic_h; int pic_w; } ;
struct mtk_vcodec_ctx {TYPE_1__ picinfo; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;

 struct mtk_vcodec_ctx* fh_to_ctx (void*) ;

__attribute__((used)) static int vidioc_vdec_s_selection(struct file *file, void *priv,
    struct v4l2_selection *s)
{
 struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 switch (s->target) {
 case 128:
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = ctx->picinfo.pic_w;
  s->r.height = ctx->picinfo.pic_h;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
