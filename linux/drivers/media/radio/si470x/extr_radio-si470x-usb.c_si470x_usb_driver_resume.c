
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct si470x_device {int hdl; } ;


 int dev_info (int *,char*) ;
 int si470x_start_usb (struct si470x_device*) ;
 struct si470x_device* usb_get_intfdata (struct usb_interface*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int si470x_usb_driver_resume(struct usb_interface *intf)
{
 struct si470x_device *radio = usb_get_intfdata(intf);
 int ret;

 dev_info(&intf->dev, "resuming now...\n");


 ret = si470x_start_usb(radio);
 if (ret == 0)
  v4l2_ctrl_handler_setup(&radio->hdl);

 return ret;
}
