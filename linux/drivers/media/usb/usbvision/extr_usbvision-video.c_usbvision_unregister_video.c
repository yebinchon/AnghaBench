
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int vdev; int rdev; } ;


 int DBG_PROBE ;
 int PDEBUG (int ,char*,int ) ;
 int video_device_node_name (int *) ;
 scalar_t__ video_is_registered (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void usbvision_unregister_video(struct usb_usbvision *usbvision)
{

 if (video_is_registered(&usbvision->rdev)) {
  PDEBUG(DBG_PROBE, "unregister %s [v4l2]",
         video_device_node_name(&usbvision->rdev));
  video_unregister_device(&usbvision->rdev);
 }


 if (video_is_registered(&usbvision->vdev)) {
  PDEBUG(DBG_PROBE, "unregister %s [v4l2]",
         video_device_node_name(&usbvision->vdev));
  video_unregister_device(&usbvision->vdev);
 }
}
