
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcba_usb_msg {int cmd_id; } ;
struct mcba_usb_ctx {int dummy; } ;
struct mcba_priv {int netdev; } ;


 struct mcba_usb_ctx* mcba_usb_get_free_ctx (struct mcba_priv*,int *) ;
 int mcba_usb_xmit (struct mcba_priv*,struct mcba_usb_msg*,struct mcba_usb_ctx*) ;
 int netdev_err (int ,char*,int ) ;

__attribute__((used)) static void mcba_usb_xmit_cmd(struct mcba_priv *priv,
         struct mcba_usb_msg *usb_msg)
{
 struct mcba_usb_ctx *ctx = ((void*)0);
 int err;

 ctx = mcba_usb_get_free_ctx(priv, ((void*)0));
 if (!ctx) {
  netdev_err(priv->netdev,
      "Lack of free ctx. Sending (%d) cmd aborted",
      usb_msg->cmd_id);

  return;
 }

 err = mcba_usb_xmit(priv, usb_msg, ctx);
 if (err)
  netdev_err(priv->netdev, "Failed to send cmd (%d)",
      usb_msg->cmd_id);
}
