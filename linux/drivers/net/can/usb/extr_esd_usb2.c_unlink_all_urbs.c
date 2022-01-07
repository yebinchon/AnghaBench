
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esd_usb2_net_priv {TYPE_1__* tx_contexts; int active_tx_jobs; int tx_submitted; } ;
struct esd_usb2 {int net_count; struct esd_usb2_net_priv** nets; int rx_submitted; } ;
struct TYPE_2__ {int echo_index; } ;


 int MAX_TX_URBS ;
 int atomic_set (int *,int ) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void unlink_all_urbs(struct esd_usb2 *dev)
{
 struct esd_usb2_net_priv *priv;
 int i, j;

 usb_kill_anchored_urbs(&dev->rx_submitted);
 for (i = 0; i < dev->net_count; i++) {
  priv = dev->nets[i];
  if (priv) {
   usb_kill_anchored_urbs(&priv->tx_submitted);
   atomic_set(&priv->active_tx_jobs, 0);

   for (j = 0; j < MAX_TX_URBS; j++)
    priv->tx_contexts[j].echo_index = MAX_TX_URBS;
  }
 }
}
