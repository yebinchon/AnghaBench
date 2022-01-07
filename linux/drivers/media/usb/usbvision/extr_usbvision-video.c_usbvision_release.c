
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int v4l2_dev; int hdl; int ctrl_urb; struct usb_usbvision* alt_max_pkt_size; int vdev; scalar_t__ initialized; } ;


 int DBG_PROBE ;
 int PDEBUG (int ,char*) ;
 int kfree (struct usb_usbvision*) ;
 int usb_free_urb (int ) ;
 int usbvision_remove_sysfs (int *) ;
 int usbvision_unregister_video (struct usb_usbvision*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void usbvision_release(struct usb_usbvision *usbvision)
{
 PDEBUG(DBG_PROBE, "");

 usbvision->initialized = 0;

 usbvision_remove_sysfs(&usbvision->vdev);
 usbvision_unregister_video(usbvision);
 kfree(usbvision->alt_max_pkt_size);

 usb_free_urb(usbvision->ctrl_urb);

 v4l2_ctrl_handler_free(&usbvision->hdl);
 v4l2_device_unregister(&usbvision->v4l2_dev);
 kfree(usbvision);

 PDEBUG(DBG_PROBE, "success");
}
