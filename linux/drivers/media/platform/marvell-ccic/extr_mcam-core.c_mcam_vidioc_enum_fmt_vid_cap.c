
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int pixelformat; } ;


 int EINVAL ;
 size_t N_MCAM_FMTS ;
 TYPE_1__* mcam_formats ;

__attribute__((used)) static int mcam_vidioc_enum_fmt_vid_cap(struct file *filp,
  void *priv, struct v4l2_fmtdesc *fmt)
{
 if (fmt->index >= N_MCAM_FMTS)
  return -EINVAL;
 fmt->pixelformat = mcam_formats[fmt->index].pixelformat;
 return 0;
}
