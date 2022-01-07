
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int multiplanar; } ;
struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 int ENOTTY ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_try_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;

int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
   struct v4l2_format *f)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (!dev->multiplanar)
  return -ENOTTY;
 return vivid_try_fmt_vid_out(file, priv, f);
}
