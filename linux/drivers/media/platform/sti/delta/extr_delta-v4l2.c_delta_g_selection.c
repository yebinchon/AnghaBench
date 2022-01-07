
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_selection {scalar_t__ type; int target; struct v4l2_rect r; } ;
struct file {int dummy; } ;
struct delta_frameinfo {int flags; int aligned_height; int aligned_width; int height; int width; struct v4l2_rect crop; } ;
struct delta_ctx {int flags; struct delta_frameinfo frameinfo; } ;


 int DELTA_FLAG_FRAMEINFO ;
 int DELTA_FRAMEINFO_FLAG_CROP ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;




 struct delta_ctx* to_ctx (void*) ;

__attribute__((used)) static int delta_g_selection(struct file *file, void *fh,
        struct v4l2_selection *s)
{
 struct delta_ctx *ctx = to_ctx(fh);
 struct delta_frameinfo *frameinfo = &ctx->frameinfo;
 struct v4l2_rect crop;

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 if ((ctx->flags & DELTA_FLAG_FRAMEINFO) &&
     (frameinfo->flags & DELTA_FRAMEINFO_FLAG_CROP)) {
  crop = frameinfo->crop;
 } else {

  crop.left = 0;
  crop.top = 0;
  crop.width = frameinfo->width;
  crop.height = frameinfo->height;
 }

 switch (s->target) {
 case 131:
 case 129:

  s->r = crop;
  break;
 case 128:
 case 130:

  s->r.left = 0;
  s->r.top = 0;
  s->r.width = frameinfo->aligned_width;
  s->r.height = frameinfo->aligned_height;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
