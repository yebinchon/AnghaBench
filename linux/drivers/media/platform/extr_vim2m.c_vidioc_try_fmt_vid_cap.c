
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vim2m_fmt {int types; } ;
struct vim2m_ctx {int quant; int ycbcr_enc; int xfer_func; int colorspace; TYPE_1__* dev; } ;
struct TYPE_6__ {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int pixelformat; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int fourcc; } ;
struct TYPE_5__ {int v4l2_dev; } ;


 int EINVAL ;
 int MEM2MEM_CAPTURE ;
 struct vim2m_ctx* file2ctx (struct file*) ;
 struct vim2m_fmt* find_format (int ) ;
 TYPE_4__* formats ;
 int v4l2_err (int *,char*,int ) ;
 int vidioc_try_fmt (struct v4l2_format*,struct vim2m_fmt*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct vim2m_fmt *fmt;
 struct vim2m_ctx *ctx = file2ctx(file);

 fmt = find_format(f->fmt.pix.pixelformat);
 if (!fmt) {
  f->fmt.pix.pixelformat = formats[0].fourcc;
  fmt = find_format(f->fmt.pix.pixelformat);
 }
 if (!(fmt->types & MEM2MEM_CAPTURE)) {
  v4l2_err(&ctx->dev->v4l2_dev,
    "Fourcc format (0x%08x) invalid.\n",
    f->fmt.pix.pixelformat);
  return -EINVAL;
 }
 f->fmt.pix.colorspace = ctx->colorspace;
 f->fmt.pix.xfer_func = ctx->xfer_func;
 f->fmt.pix.ycbcr_enc = ctx->ycbcr_enc;
 f->fmt.pix.quantization = ctx->quant;

 return vidioc_try_fmt(f, fmt);
}
