
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; scalar_t__ type; scalar_t__ pixelformat; } ;
struct file {int dummy; } ;
struct bdisp_fmt {scalar_t__ pixelformat; } ;
struct bdisp_ctx {TYPE_1__* bdisp_dev; } ;
struct TYPE_2__ {int dev; } ;


 size_t ARRAY_SIZE (struct bdisp_fmt*) ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_PIX_FMT_YUV420 ;
 struct bdisp_fmt* bdisp_formats ;
 int dev_dbg (int ,char*) ;
 struct bdisp_ctx* fh_to_ctx (void*) ;

__attribute__((used)) static int bdisp_enum_fmt(struct file *file, void *fh, struct v4l2_fmtdesc *f)
{
 struct bdisp_ctx *ctx = fh_to_ctx(fh);
 const struct bdisp_fmt *fmt;

 if (f->index >= ARRAY_SIZE(bdisp_formats))
  return -EINVAL;

 fmt = &bdisp_formats[f->index];

 if ((fmt->pixelformat == V4L2_PIX_FMT_YUV420) &&
     (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)) {
  dev_dbg(ctx->bdisp_dev->dev, "No YU12 on capture\n");
  return -EINVAL;
 }
 f->pixelformat = fmt->pixelformat;

 return 0;
}
