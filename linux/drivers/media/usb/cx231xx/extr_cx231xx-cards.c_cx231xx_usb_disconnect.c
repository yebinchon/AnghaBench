
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct cx231xx {scalar_t__ users; int lock; int wait_stream; int wait_frame; scalar_t__ USE_ISO; int vdev; int dev; int open; int state; int udev; } ;


 int DEV_DISCONNECTED ;
 int cx231xx_close_extension (struct cx231xx*) ;
 int cx231xx_ir_exit (struct cx231xx*) ;
 int cx231xx_release_resources (struct cx231xx*) ;
 int cx231xx_uninit_bulk (struct cx231xx*) ;
 int cx231xx_uninit_isoc (struct cx231xx*) ;
 int dev_warn (int ,char*,int ) ;
 int flush_request_modules (struct cx231xx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cx231xx* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int video_device_node_name (int *) ;
 int wake_up_interruptible (int *) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static void cx231xx_usb_disconnect(struct usb_interface *interface)
{
 struct cx231xx *dev;

 dev = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));

 if (!dev)
  return;

 if (!dev->udev)
  return;

 dev->state |= DEV_DISCONNECTED;

 flush_request_modules(dev);



 mutex_lock(&dev->lock);

 wake_up_interruptible_all(&dev->open);

 if (dev->users) {
  dev_warn(dev->dev,
    "device %s is open! Deregistration and memory deallocation are deferred on close.\n",
    video_device_node_name(&dev->vdev));


  cx231xx_ir_exit(dev);

  if (dev->USE_ISO)
   cx231xx_uninit_isoc(dev);
  else
   cx231xx_uninit_bulk(dev);
  wake_up_interruptible(&dev->wait_frame);
  wake_up_interruptible(&dev->wait_stream);
 } else {
 }

 cx231xx_close_extension(dev);

 mutex_unlock(&dev->lock);

 if (!dev->users)
  cx231xx_release_resources(dev);
}
