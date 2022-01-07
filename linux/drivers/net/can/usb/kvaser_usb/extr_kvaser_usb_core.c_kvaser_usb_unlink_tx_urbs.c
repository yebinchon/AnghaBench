
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvaser_usb_net_priv {int tx_submitted; } ;


 int kvaser_usb_reset_tx_urb_contexts (struct kvaser_usb_net_priv*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void kvaser_usb_unlink_tx_urbs(struct kvaser_usb_net_priv *priv)
{
 usb_kill_anchored_urbs(&priv->tx_submitted);
 kvaser_usb_reset_tx_urb_contexts(priv);
}
