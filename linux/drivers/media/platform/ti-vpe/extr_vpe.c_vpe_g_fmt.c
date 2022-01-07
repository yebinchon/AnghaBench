
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vpe_q_data {int nplanes; int * sizeimage; int * bytesperline; int colorspace; int field; TYPE_3__* fmt; int height; int width; } ;
struct TYPE_6__ {int m2m_ctx; } ;
struct vpe_ctx {TYPE_2__ fh; } ;
struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {int num_planes; TYPE_4__* plane_fmt; int colorspace; int field; int pixelformat; int height; int width; } ;
struct TYPE_5__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int sizeimage; int bytesperline; } ;
struct TYPE_7__ {int fourcc; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 struct vpe_ctx* file2ctx (struct file*) ;
 struct vpe_q_data* get_q_data (struct vpe_ctx*,int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;

__attribute__((used)) static int vpe_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
{
 struct v4l2_pix_format_mplane *pix = &f->fmt.pix_mp;
 struct vpe_ctx *ctx = file2ctx(file);
 struct vb2_queue *vq;
 struct vpe_q_data *q_data;
 int i;

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (!vq)
  return -EINVAL;

 q_data = get_q_data(ctx, f->type);

 pix->width = q_data->width;
 pix->height = q_data->height;
 pix->pixelformat = q_data->fmt->fourcc;
 pix->field = q_data->field;

 if (V4L2_TYPE_IS_OUTPUT(f->type)) {
  pix->colorspace = q_data->colorspace;
 } else {
  struct vpe_q_data *s_q_data;


  s_q_data = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);

  pix->colorspace = s_q_data->colorspace;
 }

 pix->num_planes = q_data->nplanes;

 for (i = 0; i < pix->num_planes; i++) {
  pix->plane_fmt[i].bytesperline = q_data->bytesperline[i];
  pix->plane_fmt[i].sizeimage = q_data->sizeimage[i];
 }

 return 0;
}
