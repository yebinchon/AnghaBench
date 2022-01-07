
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbtv {int udev; } ;


 int USBTV_REQUEST_REG ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int,int ,int,int ,int ,int *,int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

int usbtv_set_regs(struct usbtv *usbtv, const u16 regs[][2], int size)
{
 int ret;
 int pipe = usb_rcvctrlpipe(usbtv->udev, 0);
 int i;

 for (i = 0; i < size; i++) {
  u16 index = regs[i][0];
  u16 value = regs[i][1];

  ret = usb_control_msg(usbtv->udev, pipe, USBTV_REQUEST_REG,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, index, ((void*)0), 0, 0);
  if (ret < 0)
   return ret;
 }

 return 0;
}
