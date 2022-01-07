
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ tuner_type; } ;
struct cx88_core {int freq; TYPE_1__ board; } ;
struct cx8802_dev {struct cx88_core* core; } ;


 int EINVAL ;
 scalar_t__ UNSET ;
 int call_all (struct cx88_core*,int ,int ,struct v4l2_frequency*) ;
 int g_frequency ;
 int tuner ;
 scalar_t__ unlikely (int) ;
 struct cx8802_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
         struct v4l2_frequency *f)
{
 struct cx8802_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;

 if (unlikely(core->board.tuner_type == UNSET))
  return -EINVAL;
 if (unlikely(f->tuner != 0))
  return -EINVAL;

 f->frequency = core->freq;
 call_all(core, tuner, g_frequency, f);

 return 0;
}
