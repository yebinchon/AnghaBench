
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpe_fmt {int types; int fourcc; } ;
struct v4l2_fmtdesc {int index; int pixelformat; } ;


 int ARRAY_SIZE (struct vpe_fmt*) ;
 int EINVAL ;
 struct vpe_fmt* vpe_formats ;

__attribute__((used)) static int __enum_fmt(struct v4l2_fmtdesc *f, u32 type)
{
 int i, index;
 struct vpe_fmt *fmt = ((void*)0);

 index = 0;
 for (i = 0; i < ARRAY_SIZE(vpe_formats); ++i) {
  if (vpe_formats[i].types & type) {
   if (index == f->index) {
    fmt = &vpe_formats[i];
    break;
   }
   index++;
  }
 }

 if (!fmt)
  return -EINVAL;

 f->pixelformat = fmt->fourcc;
 return 0;
}
