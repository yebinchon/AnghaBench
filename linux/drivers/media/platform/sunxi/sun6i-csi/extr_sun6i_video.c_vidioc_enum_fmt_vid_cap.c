
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct file {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int * supported_pixformats ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
       struct v4l2_fmtdesc *f)
{
 u32 index = f->index;

 if (index >= ARRAY_SIZE(supported_pixformats))
  return -EINVAL;

 f->pixelformat = supported_pixformats[index];

 return 0;
}
