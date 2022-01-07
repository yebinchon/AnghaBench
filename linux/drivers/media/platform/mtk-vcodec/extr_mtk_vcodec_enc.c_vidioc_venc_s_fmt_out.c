
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct v4l2_plane_pix_format {int sizeimage; int bytesperline; } ;
struct v4l2_pix_format_mplane {int num_planes; struct v4l2_plane_pix_format* plane_fmt; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int field; void* height; void* width; } ;
struct TYPE_4__ {int pixelformat; } ;
struct TYPE_5__ {struct v4l2_pix_format_mplane pix_mp; TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; int type; } ;
struct mtk_video_fmt {int dummy; } ;
struct mtk_vcodec_ctx {int xfer_func; int quantization; int ycbcr_enc; int colorspace; int m2m_ctx; } ;
struct mtk_q_data {int * sizeimage; int * bytesperline; int field; void* coded_height; void* coded_width; struct mtk_video_fmt const* fmt; void* visible_height; void* visible_width; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int fourcc; } ;


 int EBUSY ;
 int EINVAL ;
 int MTK_VENC_MAX_H ;
 int MTK_VENC_MAX_W ;
 int MTK_VENC_MIN_H ;
 int MTK_VENC_MIN_W ;
 size_t OUT_FMT_IDX ;
 void* clamp (void*,int ,int ) ;
 struct mtk_vcodec_ctx* fh_to_ctx (void*) ;
 int mtk_v4l2_err (char*) ;
 struct mtk_video_fmt* mtk_venc_find_format (struct v4l2_format*) ;
 struct mtk_q_data* mtk_venc_get_q_data (struct mtk_vcodec_ctx*,int ) ;
 TYPE_3__* mtk_video_formats ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 scalar_t__ vb2_is_busy (struct vb2_queue*) ;
 int vidioc_try_fmt (struct v4l2_format*,struct mtk_video_fmt const*) ;

__attribute__((used)) static int vidioc_venc_s_fmt_out(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
 struct vb2_queue *vq;
 struct mtk_q_data *q_data;
 int ret, i;
 const struct mtk_video_fmt *fmt;
 struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;

 vq = v4l2_m2m_get_vq(ctx->m2m_ctx, f->type);
 if (!vq) {
  mtk_v4l2_err("fail to get vq");
  return -EINVAL;
 }

 if (vb2_is_busy(vq)) {
  mtk_v4l2_err("queue busy");
  return -EBUSY;
 }

 q_data = mtk_venc_get_q_data(ctx, f->type);
 if (!q_data) {
  mtk_v4l2_err("fail to get q data");
  return -EINVAL;
 }

 fmt = mtk_venc_find_format(f);
 if (!fmt) {
  f->fmt.pix.pixelformat = mtk_video_formats[OUT_FMT_IDX].fourcc;
  fmt = mtk_venc_find_format(f);
 }

 pix_fmt_mp->height = clamp(pix_fmt_mp->height,
    MTK_VENC_MIN_H,
    MTK_VENC_MAX_H);
 pix_fmt_mp->width = clamp(pix_fmt_mp->width,
    MTK_VENC_MIN_W,
    MTK_VENC_MAX_W);

 q_data->visible_width = f->fmt.pix_mp.width;
 q_data->visible_height = f->fmt.pix_mp.height;
 q_data->fmt = fmt;
 ret = vidioc_try_fmt(f, q_data->fmt);
 if (ret)
  return ret;

 q_data->coded_width = f->fmt.pix_mp.width;
 q_data->coded_height = f->fmt.pix_mp.height;

 q_data->field = f->fmt.pix_mp.field;
 ctx->colorspace = f->fmt.pix_mp.colorspace;
 ctx->ycbcr_enc = f->fmt.pix_mp.ycbcr_enc;
 ctx->quantization = f->fmt.pix_mp.quantization;
 ctx->xfer_func = f->fmt.pix_mp.xfer_func;

 for (i = 0; i < f->fmt.pix_mp.num_planes; i++) {
  struct v4l2_plane_pix_format *plane_fmt;

  plane_fmt = &f->fmt.pix_mp.plane_fmt[i];
  q_data->bytesperline[i] = plane_fmt->bytesperline;
  q_data->sizeimage[i] = plane_fmt->sizeimage;
 }

 return 0;
}
