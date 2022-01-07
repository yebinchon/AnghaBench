
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_fmtdesc {int index; int pixelformat; } ;
struct deinterlace_fmt {int types; int fourcc; } ;


 int EINVAL ;
 int NUM_FORMATS ;
 struct deinterlace_fmt* formats ;

__attribute__((used)) static int enum_fmt(struct v4l2_fmtdesc *f, u32 type)
{
 int i, num;
 struct deinterlace_fmt *fmt;

 num = 0;

 for (i = 0; i < NUM_FORMATS; ++i) {
  if (formats[i].types & type) {

   if (num == f->index)
    break;


   ++num;
  }
 }

 if (i < NUM_FORMATS) {

  fmt = &formats[i];
  f->pixelformat = fmt->fourcc;
  return 0;
 }


 return -EINVAL;
}
