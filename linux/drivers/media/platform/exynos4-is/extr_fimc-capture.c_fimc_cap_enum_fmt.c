
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int pixelformat; int index; } ;
struct fimc_fmt {int fourcc; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int FMT_FLAGS_CAM ;
 int FMT_FLAGS_M2M ;
 struct fimc_fmt* fimc_find_format (int *,int *,int,int ) ;

__attribute__((used)) static int fimc_cap_enum_fmt(struct file *file, void *priv,
        struct v4l2_fmtdesc *f)
{
 struct fimc_fmt *fmt;

 fmt = fimc_find_format(((void*)0), ((void*)0), FMT_FLAGS_CAM | FMT_FLAGS_M2M,
          f->index);
 if (!fmt)
  return -EINVAL;
 f->pixelformat = fmt->fourcc;
 return 0;
}
