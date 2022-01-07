
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_8dev_priv {int dummy; } ;
struct usb_8dev_cmd_msg {int opt2; int opt1; int command; int channel; } ;


 int USB_8DEV_CLOSE ;
 int usb_8dev_send_cmd (struct usb_8dev_priv*,struct usb_8dev_cmd_msg*,struct usb_8dev_cmd_msg*) ;

__attribute__((used)) static int usb_8dev_cmd_close(struct usb_8dev_priv *priv)
{
 struct usb_8dev_cmd_msg inmsg;
 struct usb_8dev_cmd_msg outmsg = {
  .channel = 0,
  .command = USB_8DEV_CLOSE,
  .opt1 = 0,
  .opt2 = 0
 };

 return usb_8dev_send_cmd(priv, &outmsg, &inmsg);
}
