
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int dummy; } ;
struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct cx8800_dev {struct cx88_core* core; } ;


 int cx88_set_freq (struct cx88_core*,struct v4l2_frequency const*) ;
 struct cx8800_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
         const struct v4l2_frequency *f)
{
 struct cx8800_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;

 return cx88_set_freq(core, f);
}
