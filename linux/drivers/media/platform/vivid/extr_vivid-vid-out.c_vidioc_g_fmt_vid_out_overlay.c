
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_rect {int width; int height; } ;
struct vivid_dev {unsigned int clipcount_out; int * clips_out; struct v4l2_rect compose_out; int * bitmap_out; int global_alpha_out; int chromakey_out; int overlay_out_left; int overlay_out_top; int has_fb; } ;
struct TYPE_4__ {int width; int height; int left; int top; } ;
struct v4l2_window {unsigned int clipcount; int * clips; int * bitmap; int global_alpha; int chromakey; int field; TYPE_2__ w; } ;
struct TYPE_3__ {struct v4l2_window win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 int EFAULT ;
 int EINVAL ;
 int V4L2_FIELD_ANY ;
 scalar_t__ copy_to_user (int *,int *,unsigned int) ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vidioc_g_fmt_vid_out_overlay(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct vivid_dev *dev = video_drvdata(file);
 const struct v4l2_rect *compose = &dev->compose_out;
 struct v4l2_window *win = &f->fmt.win;
 unsigned clipcount = win->clipcount;

 if (!dev->has_fb)
  return -EINVAL;
 win->w.top = dev->overlay_out_top;
 win->w.left = dev->overlay_out_left;
 win->w.width = compose->width;
 win->w.height = compose->height;
 win->clipcount = dev->clipcount_out;
 win->field = V4L2_FIELD_ANY;
 win->chromakey = dev->chromakey_out;
 win->global_alpha = dev->global_alpha_out;
 if (clipcount > dev->clipcount_out)
  clipcount = dev->clipcount_out;
 if (dev->bitmap_out == ((void*)0))
  win->bitmap = ((void*)0);
 else if (win->bitmap) {
  if (copy_to_user(win->bitmap, dev->bitmap_out,
      ((dev->compose_out.width + 7) / 8) * dev->compose_out.height))
   return -EFAULT;
 }
 if (clipcount && win->clips) {
  if (copy_to_user(win->clips, dev->clips_out,
     clipcount * sizeof(dev->clips_out[0])))
   return -EFAULT;
 }
 return 0;
}
