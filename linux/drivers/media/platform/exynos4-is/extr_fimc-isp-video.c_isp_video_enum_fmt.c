
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {scalar_t__ index; int pixelformat; } ;
struct fimc_fmt {int fourcc; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ FIMC_ISP_NUM_FORMATS ;
 scalar_t__ WARN_ON (int ) ;
 struct fimc_fmt* fimc_isp_find_format (int *,int *,scalar_t__) ;

__attribute__((used)) static int isp_video_enum_fmt(struct file *file, void *priv,
         struct v4l2_fmtdesc *f)
{
 const struct fimc_fmt *fmt;

 if (f->index >= FIMC_ISP_NUM_FORMATS)
  return -EINVAL;

 fmt = fimc_isp_find_format(((void*)0), ((void*)0), f->index);
 if (WARN_ON(fmt == ((void*)0)))
  return -EINVAL;

 f->pixelformat = fmt->fourcc;

 return 0;
}
