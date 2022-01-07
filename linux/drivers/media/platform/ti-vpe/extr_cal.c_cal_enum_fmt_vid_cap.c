
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {size_t index; int type; int pixelformat; } ;
struct file {int dummy; } ;
struct cal_fmt {int fourcc; } ;
struct cal_ctx {size_t num_active_fmt; struct cal_fmt** active_fmt; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 struct cal_ctx* video_drvdata (struct file*) ;

__attribute__((used)) static int cal_enum_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_fmtdesc *f)
{
 struct cal_ctx *ctx = video_drvdata(file);
 const struct cal_fmt *fmt = ((void*)0);

 if (f->index >= ctx->num_active_fmt)
  return -EINVAL;

 fmt = ctx->active_fmt[f->index];

 f->pixelformat = fmt->fourcc;
 f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 return 0;
}
