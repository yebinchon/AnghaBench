
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int pixelformat; } ;


 int EINVAL ;
 size_t NUM_FORMATS ;
 TYPE_1__* formats ;

__attribute__((used)) static int airspy_enum_fmt_sdr_cap(struct file *file, void *priv,
  struct v4l2_fmtdesc *f)
{
 if (f->index >= NUM_FORMATS)
  return -EINVAL;

 f->pixelformat = formats[f->index].pixelformat;

 return 0;
}
