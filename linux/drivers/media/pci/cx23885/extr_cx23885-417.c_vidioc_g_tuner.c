
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int type; int name; } ;
struct file {int dummy; } ;
struct cx23885_dev {scalar_t__ tuner_type; } ;


 int EINVAL ;
 scalar_t__ TUNER_ABSENT ;
 int call_all (struct cx23885_dev*,int ,int ,struct v4l2_tuner*) ;
 int dprintk (int,char*,int ) ;
 int g_tuner ;
 int strscpy (int ,char*,int) ;
 int tuner ;
 struct cx23885_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct cx23885_dev *dev = video_drvdata(file);

 if (dev->tuner_type == TUNER_ABSENT)
  return -EINVAL;
 if (0 != t->index)
  return -EINVAL;
 strscpy(t->name, "Television", sizeof(t->name));
 call_all(dev, tuner, g_tuner, t);

 dprintk(1, "VIDIOC_G_TUNER: tuner type %d\n", t->type);

 return 0;
}
