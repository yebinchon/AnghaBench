
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vicodec_q_data {TYPE_4__* info; int coded_height; int coded_width; int sizeimage; } ;
struct TYPE_6__ {int m2m_ctx; } ;
struct vicodec_ctx {int dev; int is_enc; TYPE_1__ fh; } ;
struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {TYPE_3__* plane_fmt; int height; int width; int pixelformat; } ;
struct v4l2_pix_format {int sizeimage; int height; int width; int pixelformat; } ;
struct TYPE_7__ {struct v4l2_pix_format_mplane pix_mp; struct v4l2_pix_format pix; } ;
struct v4l2_format {int type; TYPE_2__ fmt; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_8__ {int sizeimage; } ;


 int EBUSY ;
 int EINVAL ;




 int V4L2_PIX_FMT_FWHT ;
 int V4L2_PIX_FMT_FWHT_STATELESS ;
 int V4L2_TYPE_IS_OUTPUT (int) ;
 int dprintk (int ,char*,int,int ,int ,int ) ;
 void* find_fmt (int ) ;
 struct vicodec_q_data* get_q_data (struct vicodec_ctx*,int) ;
 TYPE_4__ pixfmt_fwht ;
 TYPE_4__ pixfmt_stateless_fwht ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int) ;
 int vb2_is_busy (struct vb2_queue*) ;

__attribute__((used)) static int vidioc_s_fmt(struct vicodec_ctx *ctx, struct v4l2_format *f)
{
 struct vicodec_q_data *q_data;
 struct vb2_queue *vq;
 bool fmt_changed = 1;
 struct v4l2_pix_format_mplane *pix_mp;
 struct v4l2_pix_format *pix;

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (!vq)
  return -EINVAL;

 q_data = get_q_data(ctx, f->type);
 if (!q_data)
  return -EINVAL;

 switch (f->type) {
 case 131:
 case 129:
  pix = &f->fmt.pix;
  if (ctx->is_enc && V4L2_TYPE_IS_OUTPUT(f->type))
   fmt_changed =
    !q_data->info ||
    q_data->info->id != pix->pixelformat ||
    q_data->coded_width != pix->width ||
    q_data->coded_height != pix->height;

  if (vb2_is_busy(vq) && fmt_changed)
   return -EBUSY;

  if (pix->pixelformat == V4L2_PIX_FMT_FWHT)
   q_data->info = &pixfmt_fwht;
  else if (pix->pixelformat == V4L2_PIX_FMT_FWHT_STATELESS)
   q_data->info = &pixfmt_stateless_fwht;
  else
   q_data->info = find_fmt(pix->pixelformat);
  q_data->coded_width = pix->width;
  q_data->coded_height = pix->height;
  q_data->sizeimage = pix->sizeimage;
  break;
 case 130:
 case 128:
  pix_mp = &f->fmt.pix_mp;
  if (ctx->is_enc && V4L2_TYPE_IS_OUTPUT(f->type))
   fmt_changed =
    !q_data->info ||
    q_data->info->id != pix_mp->pixelformat ||
    q_data->coded_width != pix_mp->width ||
    q_data->coded_height != pix_mp->height;

  if (vb2_is_busy(vq) && fmt_changed)
   return -EBUSY;

  if (pix_mp->pixelformat == V4L2_PIX_FMT_FWHT)
   q_data->info = &pixfmt_fwht;
  else if (pix_mp->pixelformat == V4L2_PIX_FMT_FWHT_STATELESS)
   q_data->info = &pixfmt_stateless_fwht;
  else
   q_data->info = find_fmt(pix_mp->pixelformat);
  q_data->coded_width = pix_mp->width;
  q_data->coded_height = pix_mp->height;
  q_data->sizeimage = pix_mp->plane_fmt[0].sizeimage;
  break;
 default:
  return -EINVAL;
 }

 dprintk(ctx->dev,
  "Setting format for type %d, coded wxh: %dx%d, fourcc: 0x%08x\n",
  f->type, q_data->coded_width, q_data->coded_height,
  q_data->info->id);

 return 0;
}
