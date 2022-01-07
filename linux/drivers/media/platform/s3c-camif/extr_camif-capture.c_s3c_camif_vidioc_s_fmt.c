
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct camif_frame {int f_width; int f_height; TYPE_2__ rect; } ;
struct camif_vp {int payload; int * owner; struct camif_fmt const* out_fmt; int vb_queue; int id; struct camif_frame out_frame; } ;
struct camif_fmt {int depth; int fourcc; } ;


 int EBUSY ;
 int __camif_video_try_format (struct camif_vp*,struct v4l2_pix_format*,struct camif_fmt const**) ;
 int pr_debug (char*,int,...) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_vidioc_s_fmt(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct camif_vp *vp = video_drvdata(file);
 struct camif_frame *out_frame = &vp->out_frame;
 const struct camif_fmt *fmt = ((void*)0);
 int ret;

 pr_debug("[vp%d]\n", vp->id);

 if (vb2_is_busy(&vp->vb_queue))
  return -EBUSY;

 ret = __camif_video_try_format(vp, &f->fmt.pix, &fmt);
 if (ret < 0)
  return ret;

 vp->out_fmt = fmt;
 vp->payload = pix->sizeimage;
 out_frame->f_width = pix->width;
 out_frame->f_height = pix->height;


 out_frame->rect.width = pix->width;
 out_frame->rect.height = pix->height;
 out_frame->rect.left = 0;
 out_frame->rect.top = 0;

 if (vp->owner == ((void*)0))
  vp->owner = priv;

 pr_debug("%ux%u. payload: %u. fmt: 0x%08x. %d %d. sizeimage: %d. bpl: %d\n",
   out_frame->f_width, out_frame->f_height, vp->payload,
   fmt->fourcc, pix->width * pix->height * fmt->depth,
   fmt->depth, pix->sizeimage, pix->bytesperline);

 return 0;
}
