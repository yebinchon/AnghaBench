
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; int frequency; int type; } ;
struct keene_device {int curfreq; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_RADIO ;
 struct keene_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct keene_device *radio = video_drvdata(file);

 if (f->tuner != 0)
  return -EINVAL;
 f->type = V4L2_TUNER_RADIO;
 f->frequency = radio->curfreq;
 return 0;
}
