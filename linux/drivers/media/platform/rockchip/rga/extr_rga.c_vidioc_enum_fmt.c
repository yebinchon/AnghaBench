
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct rga_fmt {int fourcc; } ;
struct file {int dummy; } ;


 int EINVAL ;
 size_t NUM_FORMATS ;
 struct rga_fmt* formats ;

__attribute__((used)) static int vidioc_enum_fmt(struct file *file, void *prv, struct v4l2_fmtdesc *f)
{
 struct rga_fmt *fmt;

 if (f->index >= NUM_FORMATS)
  return -EINVAL;

 fmt = &formats[f->index];
 f->pixelformat = fmt->fourcc;

 return 0;
}
