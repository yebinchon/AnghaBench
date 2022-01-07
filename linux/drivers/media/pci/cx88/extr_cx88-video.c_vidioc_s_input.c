
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct cx8800_dev {struct cx88_core* core; } ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;
 TYPE_1__ INPUT (unsigned int) ;
 int cx88_newstation (struct cx88_core*) ;
 int cx88_video_mux (struct cx88_core*,unsigned int) ;
 struct cx8800_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
{
 struct cx8800_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;

 if (i >= 4)
  return -EINVAL;
 if (!INPUT(i).type)
  return -EINVAL;

 cx88_newstation(core);
 cx88_video_mux(core, i);
 return 0;
}
