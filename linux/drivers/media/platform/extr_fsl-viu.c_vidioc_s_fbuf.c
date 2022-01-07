
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viu_fmt {int depth; } ;
struct viu_fh {struct viu_dev* dev; } ;
struct TYPE_2__ {int bytesperline; int width; int pixelformat; } ;
struct v4l2_framebuffer {TYPE_1__ fmt; } ;
struct viu_dev {struct v4l2_framebuffer ovbuf; struct viu_fmt* ovfmt; } ;
struct file {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int CAP_SYS_RAWIO ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;
 struct viu_fmt* format_by_fourcc (int ) ;

__attribute__((used)) static int vidioc_s_fbuf(struct file *file, void *priv, const struct v4l2_framebuffer *arg)
{
 struct viu_fh *fh = priv;
 struct viu_dev *dev = fh->dev;
 const struct v4l2_framebuffer *fb = arg;
 struct viu_fmt *fmt;

 if (!capable(CAP_SYS_ADMIN) && !capable(CAP_SYS_RAWIO))
  return -EPERM;


 fmt = format_by_fourcc(fb->fmt.pixelformat);
 if (fmt == ((void*)0))
  return -EINVAL;


 dev->ovbuf = *fb;
 dev->ovfmt = fmt;
 if (dev->ovbuf.fmt.bytesperline == 0) {
  dev->ovbuf.fmt.bytesperline =
   dev->ovbuf.fmt.width * fmt->depth / 8;
 }
 return 0;
}
