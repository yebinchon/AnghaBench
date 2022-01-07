
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {int v4l2_dev; } ;
struct file {struct tm6000_fh* private_data; } ;


 int EINVAL ;
 int s_tuner ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_tuner const*) ;

__attribute__((used)) static int radio_s_tuner(struct file *file, void *priv,
     const struct v4l2_tuner *t)
{
 struct tm6000_fh *fh = file->private_data;
 struct tm6000_core *dev = fh->dev;

 if (0 != t->index)
  return -EINVAL;
 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_tuner, t);
 return 0;
}
