
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
 size_t VIVID_MPLANAR_FORMATS ;
 struct vivid_dev* video_drvdata (struct file*) ;
 struct vivid_fmt* vivid_formats ;

int vivid_enum_fmt_vid(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 struct vivid_dev *dev = video_drvdata(file);
 const struct vivid_fmt *fmt;

 if (f->index >= ARRAY_SIZE(vivid_formats) -
     (dev->multiplanar ? 0 : VIVID_MPLANAR_FORMATS))
  return -EINVAL;

 fmt = &vivid_formats[f->index];

 f->pixelformat = fmt->fourcc;
 return 0;
}
