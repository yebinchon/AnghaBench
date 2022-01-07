
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int last_seq_num; int last_frag_num; int config; int request_scan; int last_rate; int scan_event; int request_passive_scan; int request_direct_scan; int net_dev; scalar_t__ last_packet_time; } ;


 int CFG_BACKGROUND_SCAN ;
 int HZ ;
 int cancel_delayed_work (int *) ;
 int ipw_gather_stats (struct ipw_priv*) ;
 int ipw_get_current_rate (struct ipw_priv*) ;
 int ipw_led_link_up (struct ipw_priv*) ;
 int ipw_reset_stats (struct ipw_priv*) ;
 int netif_carrier_on (int ) ;
 int notify_wx_assoc_event (struct ipw_priv*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void ipw_link_up(struct ipw_priv *priv)
{
 priv->last_seq_num = -1;
 priv->last_frag_num = -1;
 priv->last_packet_time = 0;

 netif_carrier_on(priv->net_dev);

 cancel_delayed_work(&priv->request_scan);
 cancel_delayed_work(&priv->request_direct_scan);
 cancel_delayed_work(&priv->request_passive_scan);
 cancel_delayed_work(&priv->scan_event);
 ipw_reset_stats(priv);

 priv->last_rate = ipw_get_current_rate(priv);
 ipw_gather_stats(priv);
 ipw_led_link_up(priv);
 notify_wx_assoc_event(priv);

 if (priv->config & CFG_BACKGROUND_SCAN)
  schedule_delayed_work(&priv->request_scan, HZ);
}
