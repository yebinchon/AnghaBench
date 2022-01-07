
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int cx25821_vidioc_s_output(struct file *file, void *priv, unsigned int o)
{
 return o ? -EINVAL : 0;
}
