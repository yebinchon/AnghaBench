
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {scalar_t__ multiplanar; } ;
struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 int ENOTTY ;
 int fmt_sp2mp_func (struct file*,void*,struct v4l2_format*,int ) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_g_fmt_vid_cap ;

int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (dev->multiplanar)
  return -ENOTTY;
 return fmt_sp2mp_func(file, priv, f, vivid_g_fmt_vid_cap);
}
