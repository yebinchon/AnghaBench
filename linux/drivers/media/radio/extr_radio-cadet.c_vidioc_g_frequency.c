
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct cadet {int curfreq; } ;


 int EINVAL ;
 int V4L2_TUNER_RADIO ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct cadet *dev = video_drvdata(file);

 if (f->tuner)
  return -EINVAL;
 f->type = V4L2_TUNER_RADIO;
 f->frequency = dev->curfreq;
 return 0;
}
