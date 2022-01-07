
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct fmi {int curfreq; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int fmi_set_freq (struct fmi*) ;
 struct fmi* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     const struct v4l2_frequency *f)
{
 struct fmi *fmi = video_drvdata(file);

 if (f->tuner != 0 || f->type != V4L2_TUNER_RADIO)
  return -EINVAL;

 fmi->curfreq = f->frequency;
 fmi_set_freq(fmi);

 return 0;
}
