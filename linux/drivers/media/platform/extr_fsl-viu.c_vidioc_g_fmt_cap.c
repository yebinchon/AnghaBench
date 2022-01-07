
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int field; } ;
struct viu_fh {int width; int sizeimage; TYPE_2__* fmt; TYPE_1__ vb_vidq; int height; } ;
struct TYPE_7__ {int width; int bytesperline; int colorspace; int sizeimage; int pixelformat; int field; int height; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int depth; int pixelformat; } ;


 int V4L2_COLORSPACE_SMPTE170M ;

__attribute__((used)) static int vidioc_g_fmt_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct viu_fh *fh = priv;

 f->fmt.pix.width = fh->width;
 f->fmt.pix.height = fh->height;
 f->fmt.pix.field = fh->vb_vidq.field;
 f->fmt.pix.pixelformat = fh->fmt->pixelformat;
 f->fmt.pix.bytesperline =
   (f->fmt.pix.width * fh->fmt->depth) >> 3;
 f->fmt.pix.sizeimage = fh->sizeimage;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 return 0;
}
