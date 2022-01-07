
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct s5p_jpeg_fmt {int dummy; } ;
struct s5p_jpeg_ctx {TYPE_1__* jpeg; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int v4l2_dev; } ;


 int EINVAL ;
 int FMT_TYPE_OUTPUT ;
 struct s5p_jpeg_ctx* fh_to_ctx (void*) ;
 struct s5p_jpeg_fmt* s5p_jpeg_find_format (struct s5p_jpeg_ctx*,int ,int ) ;
 int v4l2_err (int *,char*,int ) ;
 int vidioc_try_fmt (struct v4l2_format*,struct s5p_jpeg_fmt*,struct s5p_jpeg_ctx*,int ) ;

__attribute__((used)) static int s5p_jpeg_try_fmt_vid_out(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct s5p_jpeg_ctx *ctx = fh_to_ctx(priv);
 struct s5p_jpeg_fmt *fmt;

 fmt = s5p_jpeg_find_format(ctx, f->fmt.pix.pixelformat,
      FMT_TYPE_OUTPUT);
 if (!fmt) {
  v4l2_err(&ctx->jpeg->v4l2_dev,
    "Fourcc format (0x%08x) invalid.\n",
    f->fmt.pix.pixelformat);
  return -EINVAL;
 }

 return vidioc_try_fmt(f, fmt, ctx, FMT_TYPE_OUTPUT);
}
