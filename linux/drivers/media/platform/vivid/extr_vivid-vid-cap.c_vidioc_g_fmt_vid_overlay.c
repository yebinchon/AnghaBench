
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_rect {int width; int height; } ;
struct vivid_dev {unsigned int clipcount_cap; int * clips_cap; int * bitmap_cap; int overlay_cap_field; int overlay_cap_left; int overlay_cap_top; scalar_t__ multiplanar; struct v4l2_rect compose_cap; } ;
struct TYPE_4__ {int width; int height; int left; int top; } ;
struct v4l2_window {unsigned int clipcount; int * clips; int * bitmap; int field; TYPE_2__ w; } ;
struct TYPE_3__ {struct v4l2_window win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 int EFAULT ;
 int ENOTTY ;
 scalar_t__ copy_to_user (int *,int *,unsigned int) ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vidioc_g_fmt_vid_overlay(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct vivid_dev *dev = video_drvdata(file);
 const struct v4l2_rect *compose = &dev->compose_cap;
 struct v4l2_window *win = &f->fmt.win;
 unsigned clipcount = win->clipcount;

 if (dev->multiplanar)
  return -ENOTTY;

 win->w.top = dev->overlay_cap_top;
 win->w.left = dev->overlay_cap_left;
 win->w.width = compose->width;
 win->w.height = compose->height;
 win->field = dev->overlay_cap_field;
 win->clipcount = dev->clipcount_cap;
 if (clipcount > dev->clipcount_cap)
  clipcount = dev->clipcount_cap;
 if (dev->bitmap_cap == ((void*)0))
  win->bitmap = ((void*)0);
 else if (win->bitmap) {
  if (copy_to_user(win->bitmap, dev->bitmap_cap,
      ((compose->width + 7) / 8) * compose->height))
   return -EFAULT;
 }
 if (clipcount && win->clips) {
  if (copy_to_user(win->clips, dev->clips_cap,
     clipcount * sizeof(dev->clips_cap[0])))
   return -EFAULT;
 }
 return 0;
}
