
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {int index; int pixelformat; int flags; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int pixelformat; int flags; } ;


 int EINVAL ;
 int NUM_OUTPUT_FORMATS ;
 TYPE_1__* omap_formats ;

__attribute__((used)) static int vidioc_enum_fmt_vid_out(struct file *file, void *fh,
   struct v4l2_fmtdesc *fmt)
{
 int index = fmt->index;

 if (index >= NUM_OUTPUT_FORMATS)
  return -EINVAL;

 fmt->flags = omap_formats[index].flags;
 fmt->pixelformat = omap_formats[index].pixelformat;

 return 0;
}
