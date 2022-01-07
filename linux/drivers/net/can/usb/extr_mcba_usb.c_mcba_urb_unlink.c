
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcba_priv {int tx_submitted; int rx_submitted; } ;


 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void mcba_urb_unlink(struct mcba_priv *priv)
{
 usb_kill_anchored_urbs(&priv->rx_submitted);
 usb_kill_anchored_urbs(&priv->tx_submitted);
}
