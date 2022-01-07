
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ucan_priv {int ctl_msg_buffer; int udev; } ;


 int UCAN_USB_CTL_PIPE_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int ,int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int ucan_device_request_in(struct ucan_priv *up,
      u8 cmd, u16 subcmd, u16 datalen)
{
 return usb_control_msg(up->udev,
          usb_rcvctrlpipe(up->udev, 0),
          cmd,
          USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
          subcmd,
          0,
          up->ctl_msg_buffer,
          datalen,
          UCAN_USB_CTL_PIPE_TIMEOUT);
}
