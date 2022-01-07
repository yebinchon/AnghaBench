
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {scalar_t__ index; int pixelformat; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_YUV422P ;

__attribute__((used)) static int vpif_enum_fmt_vid_out(struct file *file, void *priv,
     struct v4l2_fmtdesc *fmt)
{
 if (fmt->index != 0)
  return -EINVAL;


 fmt->pixelformat = V4L2_PIX_FMT_YUV422P;
 return 0;
}
