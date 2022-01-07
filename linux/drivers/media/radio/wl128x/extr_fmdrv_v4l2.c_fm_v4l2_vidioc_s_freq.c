
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct fmdev {int dummy; } ;
struct file {int dummy; } ;


 int fmc_set_freq (struct fmdev*,int) ;
 struct fmdev* video_drvdata (struct file*) ;

__attribute__((used)) static int fm_v4l2_vidioc_s_freq(struct file *file, void *priv,
  const struct v4l2_frequency *freq)
{
 struct fmdev *fmdev = video_drvdata(file);





 return fmc_set_freq(fmdev, freq->frequency / 16);
}
