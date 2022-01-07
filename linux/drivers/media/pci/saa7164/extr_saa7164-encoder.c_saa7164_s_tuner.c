
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;

int saa7164_s_tuner(struct file *file, void *priv,
      const struct v4l2_tuner *t)
{
 if (0 != t->index)
  return -EINVAL;


 return 0;
}
