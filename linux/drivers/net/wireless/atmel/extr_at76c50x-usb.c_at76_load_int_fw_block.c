
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int DFU_DNLOAD ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,void*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int at76_load_int_fw_block(struct usb_device *udev, int blockno,
      void *block, int size)
{
 return usb_control_msg(udev, usb_sndctrlpipe(udev, 0), DFU_DNLOAD,
          USB_TYPE_CLASS | USB_DIR_OUT |
          USB_RECIP_INTERFACE, blockno, 0, block, size,
          USB_CTRL_GET_TIMEOUT);
}
