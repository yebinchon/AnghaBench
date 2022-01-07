
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_rect {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_4__ {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int pixelformat; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct coda_q_data {int fourcc; int height; int width; } ;
struct coda_ctx {scalar_t__ inst_type; int quantization; int ycbcr_enc; int xfer_func; int colorspace; struct coda_codec const* codec; TYPE_3__* dev; } ;
struct coda_codec {int dummy; } ;
struct TYPE_6__ {int v4l2_dev; } ;


 scalar_t__ CODA_INST_ENCODER ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 struct coda_codec* coda_find_codec (TYPE_3__*,int ,int ) ;
 int coda_s_fmt (struct coda_ctx*,struct v4l2_format*,struct v4l2_rect*) ;
 int coda_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 struct coda_ctx* fh_to_ctx (void*) ;
 struct coda_q_data* get_q_data (struct coda_ctx*,int ) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static int coda_s_fmt_vid_cap(struct file *file, void *priv,
         struct v4l2_format *f)
{
 struct coda_ctx *ctx = fh_to_ctx(priv);
 struct coda_q_data *q_data_src;
 const struct coda_codec *codec;
 struct v4l2_rect r;
 int ret;

 ret = coda_try_fmt_vid_cap(file, priv, f);
 if (ret)
  return ret;

 q_data_src = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
 r.left = 0;
 r.top = 0;
 r.width = q_data_src->width;
 r.height = q_data_src->height;

 ret = coda_s_fmt(ctx, f, &r);
 if (ret)
  return ret;

 if (ctx->inst_type != CODA_INST_ENCODER)
  return 0;


 codec = coda_find_codec(ctx->dev, q_data_src->fourcc,
    f->fmt.pix.pixelformat);
 if (!codec) {
  v4l2_err(&ctx->dev->v4l2_dev, "failed to determine codec\n");
  return -EINVAL;
 }
 ctx->codec = codec;

 ctx->colorspace = f->fmt.pix.colorspace;
 ctx->xfer_func = f->fmt.pix.xfer_func;
 ctx->ycbcr_enc = f->fmt.pix.ycbcr_enc;
 ctx->quantization = f->fmt.pix.quantization;

 return 0;
}
