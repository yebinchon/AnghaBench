
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct fimc_isp {int dummy; } ;
struct file {int dummy; } ;


 int __isp_video_try_fmt (struct fimc_isp*,int *,int *) ;
 struct fimc_isp* video_drvdata (struct file*) ;

__attribute__((used)) static int isp_video_try_fmt_mplane(struct file *file, void *fh,
     struct v4l2_format *f)
{
 struct fimc_isp *isp = video_drvdata(file);

 __isp_video_try_fmt(isp, &f->fmt.pix_mp, ((void*)0));
 return 0;
}
