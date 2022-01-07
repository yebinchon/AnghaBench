
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct tm6000_fh {int fh; int vb_vidq; int radio; struct tm6000_core* dev; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_3__ {scalar_t__ endp; } ;
struct tm6000_core {int lock; TYPE_2__ isoc_in; int udev; TYPE_1__ int_in; int users; } ;
struct file {struct tm6000_fh* private_data; } ;


 int V4L2_DEBUG_OPEN ;
 int dprintk (struct tm6000_core*,int ,char*,int ,int ) ;
 int kfree (struct tm6000_fh*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int res_free (struct tm6000_core*,struct tm6000_fh*) ;
 int tm6000_ir_int_start (struct tm6000_core*) ;
 int tm6000_ir_int_stop (struct tm6000_core*) ;
 int tm6000_uninit_isoc (struct tm6000_core*) ;
 int usb_reset_configuration (int ) ;
 int usb_set_interface (int ,int ,int) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 int videobuf_mmap_free (int *) ;

__attribute__((used)) static int tm6000_release(struct file *file)
{
 struct tm6000_fh *fh = file->private_data;
 struct tm6000_core *dev = fh->dev;
 struct video_device *vdev = video_devdata(file);

 dprintk(dev, V4L2_DEBUG_OPEN, "tm6000: close called (dev=%s, users=%d)\n",
  video_device_node_name(vdev), dev->users);

 mutex_lock(&dev->lock);
 dev->users--;

 res_free(dev, fh);

 if (!dev->users) {
  tm6000_uninit_isoc(dev);


  tm6000_ir_int_stop(dev);

  usb_reset_configuration(dev->udev);

  if (dev->int_in.endp)
   usb_set_interface(dev->udev,
     dev->isoc_in.bInterfaceNumber, 2);
  else
   usb_set_interface(dev->udev,
     dev->isoc_in.bInterfaceNumber, 0);


  tm6000_ir_int_start(dev);

  if (!fh->radio)
   videobuf_mmap_free(&fh->vb_vidq);
 }
 v4l2_fh_del(&fh->fh);
 v4l2_fh_exit(&fh->fh);
 kfree(fh);
 mutex_unlock(&dev->lock);

 return 0;
}
