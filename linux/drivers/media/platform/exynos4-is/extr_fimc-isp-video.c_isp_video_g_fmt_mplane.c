
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_4__ {int pixfmt; } ;
struct fimc_isp {TYPE_2__ video_capture; } ;
struct file {int dummy; } ;


 struct fimc_isp* video_drvdata (struct file*) ;

__attribute__((used)) static int isp_video_g_fmt_mplane(struct file *file, void *fh,
     struct v4l2_format *f)
{
 struct fimc_isp *isp = video_drvdata(file);

 f->fmt.pix_mp = isp->video_capture.pixfmt;
 return 0;
}
