
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vb2_queue {int dummy; } ;
struct v4l2_pix_format {int width; scalar_t__ pixelformat; int bytesperline; int sizeimage; int field; int height; } ;
struct TYPE_4__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct s5p_jpeg_q_data {int w; int size; TYPE_3__* fmt; int h; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; int hdr_parsed; TYPE_2__ fh; } ;
struct file {int dummy; } ;
struct TYPE_6__ {scalar_t__ fourcc; int colplanes; int depth; } ;


 int BUG_ON (int ) ;
 int EINVAL ;
 scalar_t__ S5P_JPEG_DECODE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 struct s5p_jpeg_ctx* fh_to_ctx (void*) ;
 struct s5p_jpeg_q_data* get_q_data (struct s5p_jpeg_ctx*,int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;

__attribute__((used)) static int s5p_jpeg_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
{
 struct vb2_queue *vq;
 struct s5p_jpeg_q_data *q_data = ((void*)0);
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct s5p_jpeg_ctx *ct = fh_to_ctx(priv);

 vq = v4l2_m2m_get_vq(ct->fh.m2m_ctx, f->type);
 if (!vq)
  return -EINVAL;

 if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     ct->mode == S5P_JPEG_DECODE && !ct->hdr_parsed)
  return -EINVAL;
 q_data = get_q_data(ct, f->type);
 BUG_ON(q_data == ((void*)0));

 pix->width = q_data->w;
 pix->height = q_data->h;
 pix->field = V4L2_FIELD_NONE;
 pix->pixelformat = q_data->fmt->fourcc;
 pix->bytesperline = 0;
 if (q_data->fmt->fourcc != V4L2_PIX_FMT_JPEG) {
  u32 bpl = q_data->w;

  if (q_data->fmt->colplanes == 1)
   bpl = (bpl * q_data->fmt->depth) >> 3;
  pix->bytesperline = bpl;
 }
 pix->sizeimage = q_data->size;

 return 0;
}
