
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int,void*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int at76_load_ext_fw_block(struct usb_device *udev, int blockno,
      void *block, int size)
{
 return usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x0e,
          USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
          0x0802, blockno, block, size,
          USB_CTRL_GET_TIMEOUT);
}
