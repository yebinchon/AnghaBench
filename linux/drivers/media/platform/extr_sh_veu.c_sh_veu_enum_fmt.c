
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {int index; int pixelformat; } ;
struct TYPE_2__ {int fourcc; } ;


 int EINVAL ;
 TYPE_1__* sh_veu_fmt ;

__attribute__((used)) static int sh_veu_enum_fmt(struct v4l2_fmtdesc *f, const int *fmt, int fmt_num)
{
 if (f->index >= fmt_num)
  return -EINVAL;

 f->pixelformat = sh_veu_fmt[fmt[f->index]].fourcc;
 return 0;
}
