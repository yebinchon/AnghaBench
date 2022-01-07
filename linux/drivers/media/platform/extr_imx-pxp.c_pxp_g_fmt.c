
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_7__ {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int sizeimage; int bytesperline; int pixelformat; int field; int height; int width; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; int type; } ;
struct pxp_q_data {int quant; int ycbcr_enc; int sizeimage; int bytesperline; TYPE_2__* fmt; int height; int width; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct pxp_ctx {int xfer_func; int colorspace; TYPE_1__ fh; } ;
struct TYPE_6__ {int fourcc; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 struct pxp_q_data* get_q_data (struct pxp_ctx*,int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;

__attribute__((used)) static int pxp_g_fmt(struct pxp_ctx *ctx, struct v4l2_format *f)
{
 struct vb2_queue *vq;
 struct pxp_q_data *q_data;

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (!vq)
  return -EINVAL;

 q_data = get_q_data(ctx, f->type);

 f->fmt.pix.width = q_data->width;
 f->fmt.pix.height = q_data->height;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.pixelformat = q_data->fmt->fourcc;
 f->fmt.pix.bytesperline = q_data->bytesperline;
 f->fmt.pix.sizeimage = q_data->sizeimage;
 f->fmt.pix.colorspace = ctx->colorspace;
 f->fmt.pix.xfer_func = ctx->xfer_func;
 f->fmt.pix.ycbcr_enc = q_data->ycbcr_enc;
 f->fmt.pix.quantization = q_data->quant;

 return 0;
}
