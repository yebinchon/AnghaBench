
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_encoder_cmd {int cmd; scalar_t__ flags; } ;
struct hdpvr_device {int io_mutex; int v4l2_dev; int * owner; int status; } ;
struct file {int * private_data; } ;


 int EBUSY ;
 int EINVAL ;
 int MSG_INFO ;
 int STATUS_IDLE ;
 int STATUS_STREAMING ;


 int hdpvr_debug ;
 int hdpvr_start_streaming (struct hdpvr_device*) ;
 int hdpvr_stop_streaming (struct hdpvr_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_dbg (int ,int ,int *,char*,int) ;
 struct hdpvr_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_encoder_cmd(struct file *filp, void *priv,
          struct v4l2_encoder_cmd *a)
{
 struct hdpvr_device *dev = video_drvdata(filp);
 int res = 0;

 mutex_lock(&dev->io_mutex);
 a->flags = 0;

 switch (a->cmd) {
 case 129:
  if (dev->owner && filp->private_data != dev->owner) {
   res = -EBUSY;
   break;
  }
  if (dev->status == STATUS_STREAMING)
   break;
  res = hdpvr_start_streaming(dev);
  if (!res)
   dev->owner = filp->private_data;
  else
   dev->status = STATUS_IDLE;
  break;
 case 128:
  if (dev->owner && filp->private_data != dev->owner) {
   res = -EBUSY;
   break;
  }
  if (dev->status == STATUS_IDLE)
   break;
  res = hdpvr_stop_streaming(dev);
  if (!res)
   dev->owner = ((void*)0);
  break;
 default:
  v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
    "Unsupported encoder cmd %d\n", a->cmd);
  res = -EINVAL;
  break;
 }

 mutex_unlock(&dev->io_mutex);
 return res;
}
