
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipw2100_priv {int status; int wx_event_work; int security_work; int net_dev; TYPE_1__* ieee; int bssid; int essid; int essid_len; } ;
struct TYPE_2__ {int bssid; } ;


 int IPW_DEBUG (int,char*,int ,int ,int ) ;
 int IPW_DEBUG_INFO (char*) ;
 int IPW_DL_ASSOC ;
 int IPW_DL_NOTIF ;
 int IPW_DL_STATE ;
 int STATUS_ASSOCIATED ;
 int STATUS_ASSOCIATING ;
 int STATUS_RUNNING ;
 int STATUS_SECURITY_UPDATED ;
 int STATUS_STOPPING ;
 int eth_zero_addr (int ) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void isr_indicate_association_lost(struct ipw2100_priv *priv, u32 status)
{
 IPW_DEBUG(IPW_DL_NOTIF | IPW_DL_STATE | IPW_DL_ASSOC,
    "disassociated: '%*pE' %pM\n", priv->essid_len, priv->essid,
    priv->bssid);

 priv->status &= ~(STATUS_ASSOCIATED | STATUS_ASSOCIATING);

 if (priv->status & STATUS_STOPPING) {
  IPW_DEBUG_INFO("Card is stopping itself, discard ASSN_LOST.\n");
  return;
 }

 eth_zero_addr(priv->bssid);
 eth_zero_addr(priv->ieee->bssid);

 netif_carrier_off(priv->net_dev);
 netif_stop_queue(priv->net_dev);

 if (!(priv->status & STATUS_RUNNING))
  return;

 if (priv->status & STATUS_SECURITY_UPDATED)
  schedule_delayed_work(&priv->security_work, 0);

 schedule_delayed_work(&priv->wx_event_work, 0);
}
