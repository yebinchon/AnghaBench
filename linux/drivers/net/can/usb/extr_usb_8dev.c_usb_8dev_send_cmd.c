
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_8dev_priv {int usb_8dev_cmd_lock; struct usb_8dev_cmd_msg* cmd_msg_buffer; struct net_device* netdev; } ;
struct usb_8dev_cmd_msg {scalar_t__ begin; scalar_t__ end; scalar_t__ opt1; } ;
struct net_device {int dummy; } ;


 int EPROTO ;
 scalar_t__ USB_8DEV_CMD_END ;
 scalar_t__ USB_8DEV_CMD_START ;
 int memcpy (struct usb_8dev_cmd_msg*,struct usb_8dev_cmd_msg*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (struct net_device*,char*) ;
 int usb_8dev_send_cmd_msg (struct usb_8dev_priv*,struct usb_8dev_cmd_msg*,int) ;
 int usb_8dev_wait_cmd_msg (struct usb_8dev_priv*,struct usb_8dev_cmd_msg*,int,int*) ;

__attribute__((used)) static int usb_8dev_send_cmd(struct usb_8dev_priv *priv,
        struct usb_8dev_cmd_msg *out,
        struct usb_8dev_cmd_msg *in)
{
 int err;
 int num_bytes_read;
 struct net_device *netdev;

 netdev = priv->netdev;

 out->begin = USB_8DEV_CMD_START;
 out->end = USB_8DEV_CMD_END;

 mutex_lock(&priv->usb_8dev_cmd_lock);

 memcpy(priv->cmd_msg_buffer, out,
  sizeof(struct usb_8dev_cmd_msg));

 err = usb_8dev_send_cmd_msg(priv, priv->cmd_msg_buffer,
        sizeof(struct usb_8dev_cmd_msg));
 if (err < 0) {
  netdev_err(netdev, "sending command message failed\n");
  goto failed;
 }

 err = usb_8dev_wait_cmd_msg(priv, priv->cmd_msg_buffer,
        sizeof(struct usb_8dev_cmd_msg),
        &num_bytes_read);
 if (err < 0) {
  netdev_err(netdev, "no command message answer\n");
  goto failed;
 }

 memcpy(in, priv->cmd_msg_buffer, sizeof(struct usb_8dev_cmd_msg));

 if (in->begin != USB_8DEV_CMD_START || in->end != USB_8DEV_CMD_END ||
   num_bytes_read != 16 || in->opt1 != 0)
  err = -EPROTO;

failed:
 mutex_unlock(&priv->usb_8dev_cmd_lock);
 return err;
}
