
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int index; } ;
struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int airspy_s_tuner(struct file *file, void *priv,
  const struct v4l2_tuner *v)
{
 int ret;

 if (v->index == 0)
  ret = 0;
 else if (v->index == 1)
  ret = 0;
 else
  ret = -EINVAL;

 return ret;
}
