
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int sizeimage; int bytesperline; int height; int width; int pixelformat; int field; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; int type; } ;
struct file {int dummy; } ;
struct coda_q_data {int sizeimage; int bytesperline; int height; int width; int fourcc; } ;
struct coda_ctx {int quantization; int ycbcr_enc; int xfer_func; int colorspace; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 struct coda_ctx* fh_to_ctx (void*) ;
 struct coda_q_data* get_q_data (struct coda_ctx*,int ) ;

__attribute__((used)) static int coda_g_fmt(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct coda_q_data *q_data;
 struct coda_ctx *ctx = fh_to_ctx(priv);

 q_data = get_q_data(ctx, f->type);
 if (!q_data)
  return -EINVAL;

 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.pixelformat = q_data->fourcc;
 f->fmt.pix.width = q_data->width;
 f->fmt.pix.height = q_data->height;
 f->fmt.pix.bytesperline = q_data->bytesperline;

 f->fmt.pix.sizeimage = q_data->sizeimage;
 f->fmt.pix.colorspace = ctx->colorspace;
 f->fmt.pix.xfer_func = ctx->xfer_func;
 f->fmt.pix.ycbcr_enc = ctx->ycbcr_enc;
 f->fmt.pix.quantization = ctx->quantization;

 return 0;
}
