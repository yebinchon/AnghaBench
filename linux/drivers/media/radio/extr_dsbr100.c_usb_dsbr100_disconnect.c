
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct dsbr100_device {int v4l2_dev; int v4l2_lock; int videodev; int transfer_buffer; int usbdev; } ;


 int DSB100_ONOFF ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int,int,int,int ,int,int) ;
 struct dsbr100_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void usb_dsbr100_disconnect(struct usb_interface *intf)
{
 struct dsbr100_device *radio = usb_get_intfdata(intf);

 mutex_lock(&radio->v4l2_lock);





 usb_control_msg(radio->usbdev,
  usb_rcvctrlpipe(radio->usbdev, 0),
  DSB100_ONOFF,
  USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
  0x00, 0x00, radio->transfer_buffer, 8, 300);
 usb_set_intfdata(intf, ((void*)0));
 video_unregister_device(&radio->videodev);
 v4l2_device_disconnect(&radio->v4l2_dev);
 mutex_unlock(&radio->v4l2_lock);
 v4l2_device_put(&radio->v4l2_dev);
}
