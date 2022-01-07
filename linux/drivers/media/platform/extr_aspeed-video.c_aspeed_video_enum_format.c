
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int pixelformat; scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_JPEG ;

__attribute__((used)) static int aspeed_video_enum_format(struct file *file, void *fh,
        struct v4l2_fmtdesc *f)
{
 if (f->index)
  return -EINVAL;

 f->pixelformat = V4L2_PIX_FMT_JPEG;

 return 0;
}
