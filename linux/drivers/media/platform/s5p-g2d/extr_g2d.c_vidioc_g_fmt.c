
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_7__ {int width; int bytesperline; int sizeimage; int pixelformat; int field; int height; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; int type; } ;
struct g2d_frame {int width; int size; TYPE_2__* fmt; int height; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct g2d_ctx {TYPE_1__ fh; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int depth; int fourcc; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct g2d_frame*) ;
 int PTR_ERR (struct g2d_frame*) ;
 int V4L2_FIELD_NONE ;
 struct g2d_frame* get_frame (struct g2d_ctx*,int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;

__attribute__((used)) static int vidioc_g_fmt(struct file *file, void *prv, struct v4l2_format *f)
{
 struct g2d_ctx *ctx = prv;
 struct vb2_queue *vq;
 struct g2d_frame *frm;

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (!vq)
  return -EINVAL;
 frm = get_frame(ctx, f->type);
 if (IS_ERR(frm))
  return PTR_ERR(frm);

 f->fmt.pix.width = frm->width;
 f->fmt.pix.height = frm->height;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.pixelformat = frm->fmt->fourcc;
 f->fmt.pix.bytesperline = (frm->width * frm->fmt->depth) >> 3;
 f->fmt.pix.sizeimage = frm->size;
 return 0;
}
