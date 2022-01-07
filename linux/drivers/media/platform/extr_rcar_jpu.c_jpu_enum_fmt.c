
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_fmtdesc {unsigned int index; int pixelformat; } ;
struct TYPE_3__ {int types; int fourcc; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* jpu_formats ;

__attribute__((used)) static int jpu_enum_fmt(struct v4l2_fmtdesc *f, u32 type)
{
 unsigned int i, num = 0;

 for (i = 0; i < ARRAY_SIZE(jpu_formats); ++i) {
  if (jpu_formats[i].types & type) {
   if (num == f->index)
    break;
   ++num;
  }
 }

 if (i >= ARRAY_SIZE(jpu_formats))
  return -EINVAL;

 f->pixelformat = jpu_formats[i].fourcc;

 return 0;
}
