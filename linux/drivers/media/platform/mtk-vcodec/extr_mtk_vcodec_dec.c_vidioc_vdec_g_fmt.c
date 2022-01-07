
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {TYPE_5__* plane_fmt; int pixelformat; int num_planes; int height; int width; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int field; } ;
struct TYPE_6__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct TYPE_8__ {int cap_fourcc; int buf_w; } ;
struct TYPE_7__ {int buf_h; int buf_w; int * fb_sz; } ;
struct mtk_vcodec_ctx {scalar_t__ state; int id; TYPE_3__ last_decoded_picinfo; TYPE_2__ picinfo; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int m2m_ctx; } ;
struct mtk_q_data {int * sizeimage; int * bytesperline; TYPE_4__* fmt; int coded_height; int coded_width; int visible_height; int visible_width; } ;
struct file {int dummy; } ;
struct TYPE_10__ {int sizeimage; int bytesperline; } ;
struct TYPE_9__ {int fourcc; int num_planes; } ;


 int EINVAL ;
 scalar_t__ MTK_STATE_HEADER ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int V4L2_FIELD_NONE ;
 struct mtk_vcodec_ctx* fh_to_ctx (void*) ;
 int mtk_v4l2_debug (int,char*,int ,int ,scalar_t__) ;
 int mtk_v4l2_err (char*,int ) ;
 struct mtk_q_data* mtk_vdec_get_q_data (struct mtk_vcodec_ctx*,int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;

__attribute__((used)) static int vidioc_vdec_g_fmt(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
 struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 struct vb2_queue *vq;
 struct mtk_q_data *q_data;

 vq = v4l2_m2m_get_vq(ctx->m2m_ctx, f->type);
 if (!vq) {
  mtk_v4l2_err("no vb2 queue for type=%d", f->type);
  return -EINVAL;
 }

 q_data = mtk_vdec_get_q_data(ctx, f->type);

 pix_mp->field = V4L2_FIELD_NONE;
 pix_mp->colorspace = ctx->colorspace;
 pix_mp->ycbcr_enc = ctx->ycbcr_enc;
 pix_mp->quantization = ctx->quantization;
 pix_mp->xfer_func = ctx->xfer_func;

 if ((f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) &&
     (ctx->state >= MTK_STATE_HEADER)) {






  q_data->sizeimage[0] = ctx->picinfo.fb_sz[0];
  q_data->sizeimage[1] = ctx->picinfo.fb_sz[1];
  q_data->bytesperline[0] = ctx->last_decoded_picinfo.buf_w;
  q_data->bytesperline[1] = ctx->last_decoded_picinfo.buf_w;
  q_data->coded_width = ctx->picinfo.buf_w;
  q_data->coded_height = ctx->picinfo.buf_h;
  ctx->last_decoded_picinfo.cap_fourcc = q_data->fmt->fourcc;







  pix_mp->width = q_data->coded_width;
  pix_mp->height = q_data->coded_height;





  pix_mp->num_planes = q_data->fmt->num_planes;
  pix_mp->pixelformat = q_data->fmt->fourcc;
  pix_mp->plane_fmt[0].bytesperline = q_data->bytesperline[0];
  pix_mp->plane_fmt[0].sizeimage = q_data->sizeimage[0];
  pix_mp->plane_fmt[1].bytesperline = q_data->bytesperline[1];
  pix_mp->plane_fmt[1].sizeimage = q_data->sizeimage[1];

 } else if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {






  pix_mp->width = q_data->visible_width;
  pix_mp->height = q_data->visible_height;
  pix_mp->plane_fmt[0].bytesperline = q_data->bytesperline[0];
  pix_mp->plane_fmt[0].sizeimage = q_data->sizeimage[0];
  pix_mp->pixelformat = q_data->fmt->fourcc;
  pix_mp->num_planes = q_data->fmt->num_planes;
 } else {
  pix_mp->width = q_data->coded_width;
  pix_mp->height = q_data->coded_height;
  pix_mp->num_planes = q_data->fmt->num_planes;
  pix_mp->pixelformat = q_data->fmt->fourcc;
  pix_mp->plane_fmt[0].bytesperline = q_data->bytesperline[0];
  pix_mp->plane_fmt[0].sizeimage = q_data->sizeimage[0];
  pix_mp->plane_fmt[1].bytesperline = q_data->bytesperline[1];
  pix_mp->plane_fmt[1].sizeimage = q_data->sizeimage[1];

  mtk_v4l2_debug(1, "[%d] type=%d state=%d Format information could not be read, not ready yet!",
    ctx->id, f->type, ctx->state);
 }

 return 0;
}
