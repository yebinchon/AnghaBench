
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int pixelformat; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* formats ;

int vidioc_enum_fmt_sdr_cap(struct file *file, void *fh, struct v4l2_fmtdesc *f)
{
 if (f->index >= ARRAY_SIZE(formats))
  return -EINVAL;
 f->pixelformat = formats[f->index].pixelformat;
 return 0;
}
