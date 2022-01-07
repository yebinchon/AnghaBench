
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time64_t ;
struct ipw2100_priv {int reset_backoff; int last_reset; int status; TYPE_1__* net_dev; int wait_command_queue; int reset_work; } ;
struct TYPE_3__ {int name; } ;


 int HZ ;
 int IPW_DEBUG_INFO (char*,int ,...) ;
 int MAX_RESET_BACKOFF ;
 int STATUS_RESET_PENDING ;
 int ktime_get_boottime_seconds () ;
 int netif_carrier_off (TYPE_1__*) ;
 int netif_stop_queue (TYPE_1__*) ;
 int schedule_delayed_work (int *,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void schedule_reset(struct ipw2100_priv *priv)
{
 time64_t now = ktime_get_boottime_seconds();




 if (priv->reset_backoff &&
     (now - priv->last_reset > priv->reset_backoff))
  priv->reset_backoff = 0;

 priv->last_reset = now;

 if (!(priv->status & STATUS_RESET_PENDING)) {
  IPW_DEBUG_INFO("%s: Scheduling firmware restart (%llds).\n",
          priv->net_dev->name, priv->reset_backoff);
  netif_carrier_off(priv->net_dev);
  netif_stop_queue(priv->net_dev);
  priv->status |= STATUS_RESET_PENDING;
  if (priv->reset_backoff)
   schedule_delayed_work(&priv->reset_work,
           priv->reset_backoff * HZ);
  else
   schedule_delayed_work(&priv->reset_work, 0);

  if (priv->reset_backoff < MAX_RESET_BACKOFF)
   priv->reset_backoff++;

  wake_up_interruptible(&priv->wait_command_queue);
 } else
  IPW_DEBUG_INFO("%s: Firmware restart already in progress.\n",
          priv->net_dev->name);

}
