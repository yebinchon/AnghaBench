
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ priv; int colorspace; int field; } ;
struct v4l2_framebuffer {int capability; TYPE_1__ fmt; int flags; } ;
struct vivid_dev {struct v4l2_framebuffer fb_cap; scalar_t__ multiplanar; } ;
struct file {int dummy; } ;


 int ENOTTY ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FBUF_CAP_BITMAP_CLIPPING ;
 int V4L2_FBUF_CAP_LIST_CLIPPING ;
 int V4L2_FBUF_FLAG_PRIMARY ;
 int V4L2_FIELD_NONE ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vivid_vid_cap_g_fbuf(struct file *file, void *fh,
    struct v4l2_framebuffer *a)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (dev->multiplanar)
  return -ENOTTY;

 *a = dev->fb_cap;
 a->capability = V4L2_FBUF_CAP_BITMAP_CLIPPING |
   V4L2_FBUF_CAP_LIST_CLIPPING;
 a->flags = V4L2_FBUF_FLAG_PRIMARY;
 a->fmt.field = V4L2_FIELD_NONE;
 a->fmt.colorspace = V4L2_COLORSPACE_SRGB;
 a->fmt.priv = 0;
 return 0;
}
