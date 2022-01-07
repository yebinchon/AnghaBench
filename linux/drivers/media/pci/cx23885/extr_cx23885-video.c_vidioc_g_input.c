
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int cx23885_get_input (struct file*,void*,unsigned int*) ;

__attribute__((used)) static int vidioc_g_input(struct file *file, void *priv, unsigned int *i)
{
 return cx23885_get_input(file, priv, i);
}
