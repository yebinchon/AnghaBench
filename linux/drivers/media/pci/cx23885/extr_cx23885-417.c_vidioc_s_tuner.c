
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int dummy; } ;
struct file {int dummy; } ;
struct cx23885_dev {scalar_t__ tuner_type; } ;


 int EINVAL ;
 scalar_t__ TUNER_ABSENT ;
 int call_all (struct cx23885_dev*,int ,int ,struct v4l2_tuner const*) ;
 int s_tuner ;
 int tuner ;
 struct cx23885_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    const struct v4l2_tuner *t)
{
 struct cx23885_dev *dev = video_drvdata(file);

 if (dev->tuner_type == TUNER_ABSENT)
  return -EINVAL;


 call_all(dev, tuner, s_tuner, t);

 return 0;
}
