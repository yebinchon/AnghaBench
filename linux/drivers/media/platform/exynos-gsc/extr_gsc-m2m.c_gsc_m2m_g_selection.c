
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; int top; int left; } ;
struct v4l2_selection {int target; TYPE_1__ r; int type; } ;
struct TYPE_4__ {int height; int width; int top; int left; } ;
struct gsc_frame {TYPE_2__ crop; int f_height; int f_width; } ;
struct gsc_ctx {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct gsc_frame*) ;
 int PTR_ERR (struct gsc_frame*) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;






 struct gsc_frame* ctx_get_frame (struct gsc_ctx*,int ) ;
 struct gsc_ctx* fh_to_ctx (void*) ;

__attribute__((used)) static int gsc_m2m_g_selection(struct file *file, void *fh,
   struct v4l2_selection *s)
{
 struct gsc_frame *frame;
 struct gsc_ctx *ctx = fh_to_ctx(fh);

 if ((s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) &&
     (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT))
  return -EINVAL;

 frame = ctx_get_frame(ctx, s->type);
 if (IS_ERR(frame))
  return PTR_ERR(frame);

 switch (s->target) {
 case 131:
 case 132:
 case 129:
 case 128:
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = frame->f_width;
  s->r.height = frame->f_height;
  return 0;

 case 133:
 case 130:
  s->r.left = frame->crop.left;
  s->r.top = frame->crop.top;
  s->r.width = frame->crop.width;
  s->r.height = frame->crop.height;
  return 0;
 }

 return -EINVAL;
}
