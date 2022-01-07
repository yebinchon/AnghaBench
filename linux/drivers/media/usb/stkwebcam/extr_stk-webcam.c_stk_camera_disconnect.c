
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct stk_camera {int v4l2_dev; int hdl; int vdev; int wait_frame; } ;


 int kfree (struct stk_camera*) ;
 int pr_info (char*,int ) ;
 int unset_present (struct stk_camera*) ;
 struct stk_camera* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;
 int video_device_node_name (int *) ;
 int video_unregister_device (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void stk_camera_disconnect(struct usb_interface *interface)
{
 struct stk_camera *dev = usb_get_intfdata(interface);

 usb_set_intfdata(interface, ((void*)0));
 unset_present(dev);

 wake_up_interruptible(&dev->wait_frame);

 pr_info("Syntek USB2.0 Camera release resources device %s\n",
  video_device_node_name(&dev->vdev));

 video_unregister_device(&dev->vdev);
 v4l2_ctrl_handler_free(&dev->hdl);
 v4l2_device_unregister(&dev->v4l2_dev);
 kfree(dev);
}
