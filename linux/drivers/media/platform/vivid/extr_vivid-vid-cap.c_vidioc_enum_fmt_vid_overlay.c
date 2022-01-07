
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_fmt {int fourcc; } ;
struct vivid_dev {scalar_t__ multiplanar; } ;
struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct file {int dummy; } ;


 size_t ARRAY_SIZE (struct vivid_fmt*) ;
 int EINVAL ;
 int ENOTTY ;
 struct vivid_fmt* formats_ovl ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vidioc_enum_fmt_vid_overlay(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 struct vivid_dev *dev = video_drvdata(file);
 const struct vivid_fmt *fmt;

 if (dev->multiplanar)
  return -ENOTTY;

 if (f->index >= ARRAY_SIZE(formats_ovl))
  return -EINVAL;

 fmt = &formats_ovl[f->index];

 f->pixelformat = fmt->fourcc;
 return 0;
}
