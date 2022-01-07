
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int index; } ;
struct file {int dummy; } ;


 int EINVAL ;

int vivid_sdr_s_tuner(struct file *file, void *fh, const struct v4l2_tuner *vt)
{
 if (vt->index > 1)
  return -EINVAL;
 return 0;
}
