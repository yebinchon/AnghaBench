
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk1160 {unsigned int ctl_input; } ;
struct file {int dummy; } ;


 int EINVAL ;
 unsigned int STK1160_MAX_INPUT ;
 int stk1160_select_input (struct stk1160*) ;
 struct stk1160* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
{
 struct stk1160 *dev = video_drvdata(file);

 if (i > STK1160_MAX_INPUT)
  return -EINVAL;

 dev->ctl_input = i;

 stk1160_select_input(dev);

 return 0;
}
