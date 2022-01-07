
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; int top; int left; } ;
struct v4l2_selection {TYPE_1__ r; int target; int type; } ;
struct file {int dummy; } ;
struct bdisp_frame {int height; int width; TYPE_1__ crop; } ;
struct bdisp_ctx {TYPE_2__* bdisp_dev; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct bdisp_frame*) ;
 int PTR_ERR (struct bdisp_frame*) ;
 struct bdisp_frame* ctx_get_frame (struct bdisp_ctx*,int ) ;
 int dev_err (int ,char*,...) ;
 struct bdisp_ctx* fh_to_ctx (void*) ;

__attribute__((used)) static int bdisp_g_selection(struct file *file, void *fh,
        struct v4l2_selection *s)
{
 struct bdisp_frame *frame;
 struct bdisp_ctx *ctx = fh_to_ctx(fh);

 frame = ctx_get_frame(ctx, s->type);
 if (IS_ERR(frame)) {
  dev_err(ctx->bdisp_dev->dev, "Invalid frame (%p)\n", frame);
  return PTR_ERR(frame);
 }

 switch (s->type) {
 case 135:
  switch (s->target) {
  case 130:

   s->r = frame->crop;
   break;
  case 128:
  case 129:

   s->r.left = 0;
   s->r.top = 0;
   s->r.width = frame->width;
   s->r.height = frame->height;
   break;
  default:
   dev_err(ctx->bdisp_dev->dev, "Invalid target\n");
   return -EINVAL;
  }
  break;

 case 136:
  switch (s->target) {
  case 134:
  case 131:

   s->r = frame->crop;
   break;
  case 132:
  case 133:

   s->r.left = 0;
   s->r.top = 0;
   s->r.width = frame->width;
   s->r.height = frame->height;
   break;
  default:
   dev_err(ctx->bdisp_dev->dev, "Invalid target\n");
   return -EINVAL;
  }
  break;

 default:
  dev_err(ctx->bdisp_dev->dev, "Invalid type\n");
  return -EINVAL;
 }

 return 0;
}
