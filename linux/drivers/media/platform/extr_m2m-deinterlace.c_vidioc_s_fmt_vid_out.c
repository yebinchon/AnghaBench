
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int colorspace; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct deinterlace_ctx {int colorspace; } ;


 int vidioc_s_fmt (void*,struct v4l2_format*) ;
 int vidioc_try_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_out(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct deinterlace_ctx *ctx = priv;
 int ret;

 ret = vidioc_try_fmt_vid_out(file, priv, f);
 if (ret)
  return ret;

 ret = vidioc_s_fmt(priv, f);
 if (!ret)
  ctx->colorspace = f->fmt.pix.colorspace;

 return ret;
}
