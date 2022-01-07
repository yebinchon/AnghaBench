
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct tm6000_fh {int height; int width; struct tm6000_core* dev; } ;
struct tm6000_core {int norm; int v4l2_dev; int height; int width; } ;
struct file {int dummy; } ;


 int s_std ;
 int tm6000_init_analog_mode (struct tm6000_core*) ;
 int v4l2_device_call_all (int *,int ,int ,int ,int ) ;
 int video ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id norm)
{
 int rc = 0;
 struct tm6000_fh *fh = priv;
 struct tm6000_core *dev = fh->dev;

 dev->norm = norm;
 rc = tm6000_init_analog_mode(dev);

 fh->width = dev->width;
 fh->height = dev->height;

 if (rc < 0)
  return rc;

 v4l2_device_call_all(&dev->v4l2_dev, 0, video, s_std, dev->norm);

 return 0;
}
