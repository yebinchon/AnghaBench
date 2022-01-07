
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int fourcc; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* format ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
       struct v4l2_fmtdesc *f)
{
 if (unlikely(f->index >= ARRAY_SIZE(format)))
  return -EINVAL;

 f->pixelformat = format[f->index].fourcc;

 return 0;
}
