
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int data; } ;
struct usb_interface {int dummy; } ;
struct qmi_wwan_state {TYPE_1__* subdriver; struct usb_interface* control; } ;
typedef int pm_message_t ;
struct TYPE_2__ {int (* suspend ) (struct usb_interface*,int ) ;} ;


 int stub1 (struct usb_interface*,int ) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_resume (struct usb_interface*) ;
 int usbnet_suspend (struct usb_interface*,int ) ;

__attribute__((used)) static int qmi_wwan_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct usbnet *dev = usb_get_intfdata(intf);
 struct qmi_wwan_state *info = (void *)&dev->data;
 int ret;





 ret = usbnet_suspend(intf, message);
 if (ret < 0)
  goto err;

 if (intf == info->control && info->subdriver &&
     info->subdriver->suspend)
  ret = info->subdriver->suspend(intf, message);
 if (ret < 0)
  usbnet_resume(intf);
err:
 return ret;
}
