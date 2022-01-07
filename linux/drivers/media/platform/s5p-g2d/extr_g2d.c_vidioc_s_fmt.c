
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_5__ {int bytesperline; int sizeimage; int height; int width; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; int type; } ;
struct g2d_frame {int stride; struct g2d_fmt* fmt; int height; int bottom; int width; int right; int c_height; int c_width; scalar_t__ o_height; scalar_t__ o_width; int size; } ;
struct g2d_fmt {int dummy; } ;
struct g2d_dev {int v4l2_dev; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct g2d_ctx {TYPE_1__ fh; struct g2d_dev* dev; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct g2d_frame*) ;
 int PTR_ERR (struct g2d_frame*) ;
 struct g2d_fmt* find_fmt (struct v4l2_format*) ;
 struct g2d_frame* get_frame (struct g2d_ctx*,int ) ;
 int v4l2_err (int *,char*,int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 scalar_t__ vb2_is_busy (struct vb2_queue*) ;
 int vidioc_try_fmt (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
{
 struct g2d_ctx *ctx = prv;
 struct g2d_dev *dev = ctx->dev;
 struct vb2_queue *vq;
 struct g2d_frame *frm;
 struct g2d_fmt *fmt;
 int ret = 0;



 ret = vidioc_try_fmt(file, prv, f);
 if (ret)
  return ret;
 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (vb2_is_busy(vq)) {
  v4l2_err(&dev->v4l2_dev, "queue (%d) bust\n", f->type);
  return -EBUSY;
 }
 frm = get_frame(ctx, f->type);
 if (IS_ERR(frm))
  return PTR_ERR(frm);
 fmt = find_fmt(f);
 if (!fmt)
  return -EINVAL;
 frm->width = f->fmt.pix.width;
 frm->height = f->fmt.pix.height;
 frm->size = f->fmt.pix.sizeimage;

 frm->o_width = 0;
 frm->o_height = 0;
 frm->c_width = frm->width;
 frm->c_height = frm->height;
 frm->right = frm->width;
 frm->bottom = frm->height;
 frm->fmt = fmt;
 frm->stride = f->fmt.pix.bytesperline;
 return 0;
}
