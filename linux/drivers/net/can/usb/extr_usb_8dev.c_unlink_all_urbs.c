
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_8dev_priv {TYPE_1__* tx_contexts; int active_tx_urbs; int tx_submitted; int rx_submitted; } ;
struct TYPE_2__ {int echo_index; } ;


 int MAX_TX_URBS ;
 int atomic_set (int *,int ) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void unlink_all_urbs(struct usb_8dev_priv *priv)
{
 int i;

 usb_kill_anchored_urbs(&priv->rx_submitted);

 usb_kill_anchored_urbs(&priv->tx_submitted);
 atomic_set(&priv->active_tx_urbs, 0);

 for (i = 0; i < MAX_TX_URBS; i++)
  priv->tx_contexts[i].echo_index = MAX_TX_URBS;
}
