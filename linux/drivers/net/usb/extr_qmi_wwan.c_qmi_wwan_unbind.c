
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbnet {TYPE_2__* udev; int data; } ;
struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct qmi_wwan_state {struct usb_interface* control; struct usb_interface* data; TYPE_3__* subdriver; } ;
struct TYPE_6__ {int (* disconnect ) (struct usb_interface*) ;} ;
struct TYPE_4__ {int bcdUSB; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;


 struct usb_driver* driver_of (struct usb_interface*) ;
 int le16_to_cpu (int ) ;
 int qmi_wwan_change_dtr (struct usbnet*,int) ;
 int qmi_wwan_manage_power (struct usbnet*,int ) ;
 int stub1 (struct usb_interface*) ;
 int usb_driver_release_interface (struct usb_driver*,struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void qmi_wwan_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 struct qmi_wwan_state *info = (void *)&dev->data;
 struct usb_driver *driver = driver_of(intf);
 struct usb_interface *other;

 if (info->subdriver && info->subdriver->disconnect)
  info->subdriver->disconnect(info->control);


 if (le16_to_cpu(dev->udev->descriptor.bcdUSB) >= 0x0201) {
  qmi_wwan_change_dtr(dev, 0);
  qmi_wwan_manage_power(dev, 0);
 }


 if (intf == info->control)
  other = info->data;
 else
  other = info->control;


 if (other && intf != other) {
  usb_set_intfdata(other, ((void*)0));
  usb_driver_release_interface(driver, other);
 }

 info->subdriver = ((void*)0);
 info->data = ((void*)0);
 info->control = ((void*)0);
}
