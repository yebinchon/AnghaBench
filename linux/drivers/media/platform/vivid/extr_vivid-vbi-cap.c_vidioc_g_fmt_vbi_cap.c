
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vivid_dev {int has_raw_vbi_cap; } ;
struct v4l2_vbi_format {int dummy; } ;
struct TYPE_2__ {struct v4l2_vbi_format vbi; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_g_fmt_vbi_cap (struct vivid_dev*,struct v4l2_vbi_format*) ;
 int vivid_is_sdtv_cap (struct vivid_dev*) ;

int vidioc_g_fmt_vbi_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct v4l2_vbi_format *vbi = &f->fmt.vbi;

 if (!vivid_is_sdtv_cap(dev) || !dev->has_raw_vbi_cap)
  return -EINVAL;

 vivid_g_fmt_vbi_cap(dev, vbi);
 return 0;
}
