
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx88_core {unsigned int input; } ;
struct cx8802_dev {struct cx88_core* core; } ;


 struct cx8802_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct cx8802_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;

 *i = core->input;
 return 0;
}
