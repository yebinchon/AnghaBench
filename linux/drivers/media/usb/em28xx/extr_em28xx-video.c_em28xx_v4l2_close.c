
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct file {int dummy; } ;
struct em28xx_v4l2 {int users; int ref; int v4l2_dev; } ;
struct em28xx {int ref; int lock; TYPE_1__* intf; scalar_t__ alt; scalar_t__ disconnected; struct em28xx_v4l2* v4l2; } ;
struct TYPE_2__ {int dev; } ;


 int EM28XX_SUSPEND ;
 int dev_err (int *,char*,int) ;
 int em28xx_free_device ;
 int em28xx_free_v4l2 ;
 int em28xx_set_mode (struct em28xx*,int ) ;
 int em28xx_videodbg (char*,...) ;
 struct usb_device* interface_to_usbdev (TYPE_1__*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int standby ;
 int tuner ;
 int usb_set_interface (struct usb_device*,int ,int ) ;
 int v4l2_device_call_all (int *,int ,int ,int ) ;
 int vb2_fop_release (struct file*) ;
 struct em28xx* video_drvdata (struct file*) ;

__attribute__((used)) static int em28xx_v4l2_close(struct file *filp)
{
 struct em28xx *dev = video_drvdata(filp);
 struct em28xx_v4l2 *v4l2 = dev->v4l2;
 struct usb_device *udev = interface_to_usbdev(dev->intf);
 int err;

 em28xx_videodbg("users=%d\n", v4l2->users);

 vb2_fop_release(filp);
 mutex_lock(&dev->lock);

 if (v4l2->users == 1) {

  if (dev->disconnected)
   goto exit;


  v4l2_device_call_all(&v4l2->v4l2_dev, 0, tuner, standby);


  em28xx_set_mode(dev, EM28XX_SUSPEND);


  dev->alt = 0;
  em28xx_videodbg("setting alternate 0\n");
  err = usb_set_interface(udev, 0, 0);
  if (err < 0) {
   dev_err(&dev->intf->dev,
    "cannot change alternate number to 0 (error=%i)\n",
    err);
  }
 }

exit:
 v4l2->users--;
 kref_put(&v4l2->ref, em28xx_free_v4l2);
 mutex_unlock(&dev->lock);
 kref_put(&dev->ref, em28xx_free_device);

 return 0;
}
