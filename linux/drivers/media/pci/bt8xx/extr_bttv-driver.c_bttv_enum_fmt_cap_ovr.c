
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {unsigned int index; int pixelformat; } ;
struct TYPE_2__ {int fourcc; } ;


 int EINVAL ;
 int FORMATS ;
 TYPE_1__* formats ;

__attribute__((used)) static int bttv_enum_fmt_cap_ovr(struct v4l2_fmtdesc *f)
{
 int index = -1, i;

 for (i = 0; i < FORMATS; i++) {
  if (formats[i].fourcc != -1)
   index++;
  if ((unsigned int)index == f->index)
   break;
 }
 if (FORMATS == i)
  return -EINVAL;

 f->pixelformat = formats[i].fourcc;

 return i;
}
