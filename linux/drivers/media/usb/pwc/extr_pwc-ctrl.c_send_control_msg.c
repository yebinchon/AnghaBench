
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pwc_device {int vcinterface; int udev; } ;


 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,void*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

int send_control_msg(struct pwc_device *pdev,
 u8 request, u16 value, void *buf, int buflen)
{
 return usb_control_msg(pdev->udev, usb_sndctrlpipe(pdev->udev, 0),
   request,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, pdev->vcinterface,
   buf, buflen, USB_CTRL_SET_TIMEOUT);
}
