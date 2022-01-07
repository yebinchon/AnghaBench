
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct cx8800_dev {struct cx88_core* core; } ;


 int EINVAL ;
 int call_all (struct cx88_core*,int ,int ,struct v4l2_tuner const*) ;
 int s_tuner ;
 int tuner ;
 struct cx8800_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int radio_s_tuner(struct file *file, void *priv,
    const struct v4l2_tuner *t)
{
 struct cx8800_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;

 if (t->index != 0)
  return -EINVAL;

 call_all(core, tuner, s_tuner, t);
 return 0;
}
