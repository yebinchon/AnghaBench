
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_htc_priv {TYPE_1__* wmi; } ;
struct TYPE_2__ {int wmi_lock; int wmi_event_queue; int wmi_event_tasklet; } ;


 int __skb_queue_purge (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_kill (int *) ;

void ath9k_wmi_event_drain(struct ath9k_htc_priv *priv)
{
 unsigned long flags;

 tasklet_kill(&priv->wmi->wmi_event_tasklet);
 spin_lock_irqsave(&priv->wmi->wmi_lock, flags);
 __skb_queue_purge(&priv->wmi->wmi_event_queue);
 spin_unlock_irqrestore(&priv->wmi->wmi_lock, flags);
}
