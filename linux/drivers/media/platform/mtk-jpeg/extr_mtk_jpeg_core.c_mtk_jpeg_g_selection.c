
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int top; int left; int height; int width; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_3__ r; } ;
struct TYPE_5__ {int h; int w; } ;
struct TYPE_4__ {int h; int w; } ;
struct mtk_jpeg_ctx {TYPE_2__ cap_q; TYPE_1__ out_q; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;




 struct mtk_jpeg_ctx* mtk_jpeg_fh_to_ctx (void*) ;

__attribute__((used)) static int mtk_jpeg_g_selection(struct file *file, void *priv,
    struct v4l2_selection *s)
{
 struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 switch (s->target) {
 case 131:
 case 129:
  s->r.width = ctx->out_q.w;
  s->r.height = ctx->out_q.h;
  s->r.left = 0;
  s->r.top = 0;
  break;
 case 130:
 case 128:
  s->r.width = ctx->cap_q.w;
  s->r.height = ctx->cap_q.h;
  s->r.left = 0;
  s->r.top = 0;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
