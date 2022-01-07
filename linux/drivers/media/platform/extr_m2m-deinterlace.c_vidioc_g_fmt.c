
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_7__ {int width; int pixelformat; int bytesperline; int colorspace; int sizeimage; int field; int height; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; int type; } ;
struct deinterlace_q_data {int width; int sizeimage; TYPE_2__* fmt; int field; int height; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct deinterlace_ctx {int colorspace; TYPE_1__ fh; } ;
struct TYPE_6__ {int fourcc; } ;


 int EINVAL ;


 struct deinterlace_q_data* get_q_data (int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;

__attribute__((used)) static int vidioc_g_fmt(struct deinterlace_ctx *ctx, struct v4l2_format *f)
{
 struct vb2_queue *vq;
 struct deinterlace_q_data *q_data;

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (!vq)
  return -EINVAL;

 q_data = get_q_data(f->type);

 f->fmt.pix.width = q_data->width;
 f->fmt.pix.height = q_data->height;
 f->fmt.pix.field = q_data->field;
 f->fmt.pix.pixelformat = q_data->fmt->fourcc;

 switch (q_data->fmt->fourcc) {
 case 129:
  f->fmt.pix.bytesperline = q_data->width * 3 / 2;
  break;
 case 128:
 default:
  f->fmt.pix.bytesperline = q_data->width * 2;
 }

 f->fmt.pix.sizeimage = q_data->sizeimage;
 f->fmt.pix.colorspace = ctx->colorspace;

 return 0;
}
