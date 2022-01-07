
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int field; } ;
struct viu_fh {int type; TYPE_1__ vb_vidq; int sizeimage; int height; int width; int fmt; } ;
struct TYPE_5__ {int field; int sizeimage; int height; int width; int pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {int type; TYPE_3__ fmt; } ;
struct file {int dummy; } ;


 int format_by_fourcc (int ) ;
 int vidioc_try_fmt_cap (struct file*,struct viu_fh*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_fmt_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct viu_fh *fh = priv;
 int ret;

 ret = vidioc_try_fmt_cap(file, fh, f);
 if (ret < 0)
  return ret;

 fh->fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 fh->width = f->fmt.pix.width;
 fh->height = f->fmt.pix.height;
 fh->sizeimage = f->fmt.pix.sizeimage;
 fh->vb_vidq.field = f->fmt.pix.field;
 fh->type = f->type;
 return 0;
}
