
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viu_fh {struct viu_dev* dev; } ;
struct v4l2_framebuffer {int capability; } ;
struct viu_dev {struct v4l2_framebuffer ovbuf; } ;
struct file {int dummy; } ;


 int V4L2_FBUF_CAP_LIST_CLIPPING ;

__attribute__((used)) static int vidioc_g_fbuf(struct file *file, void *priv, struct v4l2_framebuffer *arg)
{
 struct viu_fh *fh = priv;
 struct viu_dev *dev = fh->dev;
 struct v4l2_framebuffer *fb = arg;

 *fb = dev->ovbuf;
 fb->capability = V4L2_FBUF_CAP_LIST_CLIPPING;
 return 0;
}
