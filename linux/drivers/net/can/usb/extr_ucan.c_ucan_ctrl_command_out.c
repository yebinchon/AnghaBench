
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ucan_priv {int ctl_msg_buffer; int intf_index; int udev; } ;


 int UCAN_USB_CTL_PIPE_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int ,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int ucan_ctrl_command_out(struct ucan_priv *up,
     u8 cmd, u16 subcmd, u16 datalen)
{
 return usb_control_msg(up->udev,
          usb_sndctrlpipe(up->udev, 0),
          cmd,
          USB_DIR_OUT | USB_TYPE_VENDOR |
      USB_RECIP_INTERFACE,
          subcmd,
          up->intf_index,
          up->ctl_msg_buffer,
          datalen,
          UCAN_USB_CTL_PIPE_TIMEOUT);
}
