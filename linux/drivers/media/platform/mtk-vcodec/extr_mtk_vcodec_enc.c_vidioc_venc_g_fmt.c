
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {int num_planes; int xfer_func; int quantization; int ycbcr_enc; int colorspace; scalar_t__ flags; TYPE_3__* plane_fmt; int field; int pixelformat; int height; int width; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct mtk_vcodec_ctx {int xfer_func; int quantization; int ycbcr_enc; int colorspace; int m2m_ctx; } ;
struct mtk_q_data {int * sizeimage; int * bytesperline; TYPE_2__* fmt; int field; int coded_height; int coded_width; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int * reserved; int sizeimage; int bytesperline; } ;
struct TYPE_5__ {int num_planes; int fourcc; } ;


 int EINVAL ;
 struct mtk_vcodec_ctx* fh_to_ctx (void*) ;
 int memset (int *,int,int) ;
 struct mtk_q_data* mtk_venc_get_q_data (struct mtk_vcodec_ctx*,int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;

__attribute__((used)) static int vidioc_venc_g_fmt(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct v4l2_pix_format_mplane *pix = &f->fmt.pix_mp;
 struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
 struct vb2_queue *vq;
 struct mtk_q_data *q_data;
 int i;

 vq = v4l2_m2m_get_vq(ctx->m2m_ctx, f->type);
 if (!vq)
  return -EINVAL;

 q_data = mtk_venc_get_q_data(ctx, f->type);

 pix->width = q_data->coded_width;
 pix->height = q_data->coded_height;
 pix->pixelformat = q_data->fmt->fourcc;
 pix->field = q_data->field;
 pix->num_planes = q_data->fmt->num_planes;
 for (i = 0; i < pix->num_planes; i++) {
  pix->plane_fmt[i].bytesperline = q_data->bytesperline[i];
  pix->plane_fmt[i].sizeimage = q_data->sizeimage[i];
  memset(&(pix->plane_fmt[i].reserved[0]), 0x0,
         sizeof(pix->plane_fmt[i].reserved));
 }

 pix->flags = 0;
 pix->colorspace = ctx->colorspace;
 pix->ycbcr_enc = ctx->ycbcr_enc;
 pix->quantization = ctx->quantization;
 pix->xfer_func = ctx->xfer_func;

 return 0;
}
