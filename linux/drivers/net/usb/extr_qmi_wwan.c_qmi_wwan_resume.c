
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int data; } ;
struct usb_interface {int dummy; } ;
struct qmi_wwan_state {TYPE_1__* subdriver; struct usb_interface* control; } ;
struct TYPE_2__ {int (* resume ) (struct usb_interface*) ;int (* suspend ) (struct usb_interface*,int ) ;} ;


 int PMSG_SUSPEND ;
 int stub1 (struct usb_interface*) ;
 int stub2 (struct usb_interface*,int ) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_resume (struct usb_interface*) ;

__attribute__((used)) static int qmi_wwan_resume(struct usb_interface *intf)
{
 struct usbnet *dev = usb_get_intfdata(intf);
 struct qmi_wwan_state *info = (void *)&dev->data;
 int ret = 0;
 bool callsub = (intf == info->control && info->subdriver &&
   info->subdriver->resume);

 if (callsub)
  ret = info->subdriver->resume(intf);
 if (ret < 0)
  goto err;
 ret = usbnet_resume(intf);
 if (ret < 0 && callsub)
  info->subdriver->suspend(intf, PMSG_SUSPEND);
err:
 return ret;
}
