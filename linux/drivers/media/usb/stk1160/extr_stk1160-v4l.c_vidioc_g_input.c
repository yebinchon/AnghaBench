
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk1160 {unsigned int ctl_input; } ;
struct file {int dummy; } ;


 struct stk1160* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct stk1160 *dev = video_drvdata(file);
 *i = dev->ctl_input;
 return 0;
}
