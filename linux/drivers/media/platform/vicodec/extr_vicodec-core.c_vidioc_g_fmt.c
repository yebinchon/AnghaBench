
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vicodec_q_data {int coded_width; int sizeimage; int coded_height; struct v4l2_fwht_pixfmt_info* info; } ;
struct TYPE_7__ {int quantization; int ycbcr_enc; int xfer_func; int colorspace; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct vicodec_ctx {TYPE_3__ state; TYPE_1__ fh; } ;
struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {int width; int num_planes; TYPE_4__* plane_fmt; int reserved; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int pixelformat; void* field; int height; } ;
struct v4l2_pix_format {int width; int bytesperline; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int sizeimage; int pixelformat; void* field; int height; } ;
struct v4l2_fwht_pixfmt_info {int bytesperline_mult; int id; } ;
struct TYPE_6__ {struct v4l2_pix_format_mplane pix_mp; struct v4l2_pix_format pix; } ;
struct v4l2_format {int type; TYPE_2__ fmt; } ;
struct TYPE_8__ {int bytesperline; int reserved; int sizeimage; } ;


 int EINVAL ;




 void* V4L2_FIELD_NONE ;
 struct vicodec_q_data* get_q_data (struct vicodec_ctx*,int) ;
 int memset (int ,int ,int) ;
 int multiplanar ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int) ;

__attribute__((used)) static int vidioc_g_fmt(struct vicodec_ctx *ctx, struct v4l2_format *f)
{
 struct vb2_queue *vq;
 struct vicodec_q_data *q_data;
 struct v4l2_pix_format_mplane *pix_mp;
 struct v4l2_pix_format *pix;
 const struct v4l2_fwht_pixfmt_info *info;

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (!vq)
  return -EINVAL;

 q_data = get_q_data(ctx, f->type);
 info = q_data->info;

 switch (f->type) {
 case 131:
 case 129:
  if (multiplanar)
   return -EINVAL;
  pix = &f->fmt.pix;
  pix->width = q_data->coded_width;
  pix->height = q_data->coded_height;
  pix->field = V4L2_FIELD_NONE;
  pix->pixelformat = info->id;
  pix->bytesperline = q_data->coded_width *
     info->bytesperline_mult;
  pix->sizeimage = q_data->sizeimage;
  pix->colorspace = ctx->state.colorspace;
  pix->xfer_func = ctx->state.xfer_func;
  pix->ycbcr_enc = ctx->state.ycbcr_enc;
  pix->quantization = ctx->state.quantization;
  break;

 case 130:
 case 128:
  if (!multiplanar)
   return -EINVAL;
  pix_mp = &f->fmt.pix_mp;
  pix_mp->width = q_data->coded_width;
  pix_mp->height = q_data->coded_height;
  pix_mp->field = V4L2_FIELD_NONE;
  pix_mp->pixelformat = info->id;
  pix_mp->num_planes = 1;
  pix_mp->plane_fmt[0].bytesperline =
    q_data->coded_width * info->bytesperline_mult;
  pix_mp->plane_fmt[0].sizeimage = q_data->sizeimage;
  pix_mp->colorspace = ctx->state.colorspace;
  pix_mp->xfer_func = ctx->state.xfer_func;
  pix_mp->ycbcr_enc = ctx->state.ycbcr_enc;
  pix_mp->quantization = ctx->state.quantization;
  memset(pix_mp->reserved, 0, sizeof(pix_mp->reserved));
  memset(pix_mp->plane_fmt[0].reserved, 0,
         sizeof(pix_mp->plane_fmt[0].reserved));
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
