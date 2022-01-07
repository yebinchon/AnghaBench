
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {int index; int pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int fourcc; } ;


 int EINVAL ;
 int NUM_FORMATS ;
 TYPE_1__* formats ;

__attribute__((used)) static int vidioc_enum_fmt(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 int index = f->index;

 if (f->index >= NUM_FORMATS)
  return -EINVAL;

 f->pixelformat = formats[index].fourcc;
 return 0;
}
