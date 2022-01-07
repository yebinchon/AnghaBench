
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct fimc_dev {int dummy; } ;
struct file {int dummy; } ;


 int __fimc_capture_set_format (struct fimc_dev*,struct v4l2_format*) ;
 struct fimc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_cap_s_fmt_mplane(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct fimc_dev *fimc = video_drvdata(file);

 return __fimc_capture_set_format(fimc, f);
}
