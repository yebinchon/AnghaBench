
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_8dev_priv {int udev; } ;


 int USB_8DEV_CMD_TIMEOUT ;
 int USB_8DEV_ENDP_CMD_TX ;
 int usb_bulk_msg (int ,int ,int *,int,int*,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int usb_8dev_send_cmd_msg(struct usb_8dev_priv *priv, u8 *msg, int size)
{
 int actual_length;

 return usb_bulk_msg(priv->udev,
       usb_sndbulkpipe(priv->udev, USB_8DEV_ENDP_CMD_TX),
       msg, size, &actual_length, USB_8DEV_CMD_TIMEOUT);
}
