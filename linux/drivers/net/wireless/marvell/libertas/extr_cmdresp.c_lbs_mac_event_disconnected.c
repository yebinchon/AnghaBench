
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {scalar_t__ connect_status; scalar_t__ psstate; int driver_lock; scalar_t__ tx_pending_len; int * currenttxskb; int dev; TYPE_1__* wdev; } ;
struct TYPE_2__ {scalar_t__ iftype; } ;


 scalar_t__ LBS_CONNECTED ;
 scalar_t__ LBS_DISCONNECTED ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int PS_MODE_ACTION_EXIT_PS ;
 scalar_t__ PS_STATE_FULL_POWER ;
 int kfree_skb (int *) ;
 int lbs_deb_cmd (char*) ;
 int lbs_send_disconnect_notification (struct lbs_private*,int) ;
 int lbs_set_ps_mode (struct lbs_private*,int ,int) ;
 int msleep_interruptible (int) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void lbs_mac_event_disconnected(struct lbs_private *priv,
    bool locally_generated)
{
 unsigned long flags;

 if (priv->connect_status != LBS_CONNECTED)
  return;





 msleep_interruptible(1000);

 if (priv->wdev->iftype == NL80211_IFTYPE_STATION)
  lbs_send_disconnect_notification(priv, locally_generated);


 netif_stop_queue(priv->dev);
 netif_carrier_off(priv->dev);


 spin_lock_irqsave(&priv->driver_lock, flags);
 kfree_skb(priv->currenttxskb);
 priv->currenttxskb = ((void*)0);
 priv->tx_pending_len = 0;
 spin_unlock_irqrestore(&priv->driver_lock, flags);

 priv->connect_status = LBS_DISCONNECTED;

 if (priv->psstate != PS_STATE_FULL_POWER) {

  lbs_deb_cmd("disconnected, so exit PS mode\n");
  lbs_set_ps_mode(priv, PS_MODE_ACTION_EXIT_PS, 0);
 }
}
