
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_format {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ctx; } ;
struct fimc_dev {TYPE_2__ vid_cap; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int d_frame; } ;


 int __fimc_get_format (int *,struct v4l2_format*) ;
 struct fimc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_cap_g_fmt_mplane(struct file *file, void *fh,
     struct v4l2_format *f)
{
 struct fimc_dev *fimc = video_drvdata(file);

 __fimc_get_format(&fimc->vid_cap.ctx->d_frame, f);
 return 0;
}
