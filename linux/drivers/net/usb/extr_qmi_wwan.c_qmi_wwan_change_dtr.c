
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {TYPE_3__* intf; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int USB_CDC_REQ_SET_CONTROL_LINE_STATE ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int usbnet_write_cmd (struct usbnet*,int ,int,int,int ,int *,int ) ;

__attribute__((used)) static int qmi_wwan_change_dtr(struct usbnet *dev, bool on)
{
 u8 intf = dev->intf->cur_altsetting->desc.bInterfaceNumber;

 return usbnet_write_cmd(dev, USB_CDC_REQ_SET_CONTROL_LINE_STATE,
    USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
    on ? 0x01 : 0x00, intf, ((void*)0), 0);
}
