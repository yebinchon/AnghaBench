
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_8dev_priv {int dummy; } ;
struct usb_8dev_cmd_msg {scalar_t__ data; int opt2; int opt1; int command; int channel; } ;
typedef int __be32 ;


 int USB_8DEV_GET_SOFTW_HARDW_VER ;
 int be32_to_cpup (int *) ;
 int usb_8dev_send_cmd (struct usb_8dev_priv*,struct usb_8dev_cmd_msg*,struct usb_8dev_cmd_msg*) ;

__attribute__((used)) static int usb_8dev_cmd_version(struct usb_8dev_priv *priv, u32 *res)
{
 struct usb_8dev_cmd_msg inmsg;
 struct usb_8dev_cmd_msg outmsg = {
  .channel = 0,
  .command = USB_8DEV_GET_SOFTW_HARDW_VER,
  .opt1 = 0,
  .opt2 = 0
 };

 int err = usb_8dev_send_cmd(priv, &outmsg, &inmsg);
 if (err)
  return err;

 *res = be32_to_cpup((__be32 *)inmsg.data);

 return err;
}
