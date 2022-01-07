
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int pixelformat; int index; } ;
struct gsc_fmt {int pixelformat; } ;


 int EINVAL ;
 struct gsc_fmt* find_fmt (int *,int *,int ) ;

int gsc_enum_fmt(struct v4l2_fmtdesc *f)
{
 const struct gsc_fmt *fmt;

 fmt = find_fmt(((void*)0), ((void*)0), f->index);
 if (!fmt)
  return -EINVAL;

 f->pixelformat = fmt->pixelformat;

 return 0;
}
