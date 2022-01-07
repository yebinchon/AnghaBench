
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int irq_tasklet; int qos_activate; int merge_networks; int led_act_off; int led_link_off; int led_link_on; int link_down; int link_up; int scan_check; int roam; int abort_scan; int gather_stats; int scan_event; int request_passive_scan; int request_direct_scan; int request_scan; int down; int up; int rf_kill; int adapter_restart; int rx_replenish; int system_config; int disassociate; int associate; int adhoc_check; int wait_state; int wait_command_queue; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int ipw_bg_abort_scan ;
 int ipw_bg_adapter_restart ;
 int ipw_bg_adhoc_check ;
 int ipw_bg_associate ;
 int ipw_bg_disassociate ;
 int ipw_bg_down ;
 int ipw_bg_gather_stats ;
 int ipw_bg_led_activity_off ;
 int ipw_bg_led_link_off ;
 int ipw_bg_led_link_on ;
 int ipw_bg_link_down ;
 int ipw_bg_link_up ;
 int ipw_bg_qos_activate ;
 int ipw_bg_rf_kill ;
 int ipw_bg_roam ;
 int ipw_bg_rx_queue_replenish ;
 int ipw_bg_scan_check ;
 int ipw_bg_up ;
 scalar_t__ ipw_irq_tasklet ;
 int ipw_merge_adhoc_network ;
 int ipw_request_direct_scan ;
 int ipw_request_passive_scan ;
 int ipw_request_scan ;
 int ipw_scan_event ;
 int ipw_system_config ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

__attribute__((used)) static int ipw_setup_deferred_work(struct ipw_priv *priv)
{
 int ret = 0;

 init_waitqueue_head(&priv->wait_command_queue);
 init_waitqueue_head(&priv->wait_state);

 INIT_DELAYED_WORK(&priv->adhoc_check, ipw_bg_adhoc_check);
 INIT_WORK(&priv->associate, ipw_bg_associate);
 INIT_WORK(&priv->disassociate, ipw_bg_disassociate);
 INIT_WORK(&priv->system_config, ipw_system_config);
 INIT_WORK(&priv->rx_replenish, ipw_bg_rx_queue_replenish);
 INIT_WORK(&priv->adapter_restart, ipw_bg_adapter_restart);
 INIT_DELAYED_WORK(&priv->rf_kill, ipw_bg_rf_kill);
 INIT_WORK(&priv->up, ipw_bg_up);
 INIT_WORK(&priv->down, ipw_bg_down);
 INIT_DELAYED_WORK(&priv->request_scan, ipw_request_scan);
 INIT_DELAYED_WORK(&priv->request_direct_scan, ipw_request_direct_scan);
 INIT_DELAYED_WORK(&priv->request_passive_scan, ipw_request_passive_scan);
 INIT_DELAYED_WORK(&priv->scan_event, ipw_scan_event);
 INIT_DELAYED_WORK(&priv->gather_stats, ipw_bg_gather_stats);
 INIT_WORK(&priv->abort_scan, ipw_bg_abort_scan);
 INIT_WORK(&priv->roam, ipw_bg_roam);
 INIT_DELAYED_WORK(&priv->scan_check, ipw_bg_scan_check);
 INIT_WORK(&priv->link_up, ipw_bg_link_up);
 INIT_WORK(&priv->link_down, ipw_bg_link_down);
 INIT_DELAYED_WORK(&priv->led_link_on, ipw_bg_led_link_on);
 INIT_DELAYED_WORK(&priv->led_link_off, ipw_bg_led_link_off);
 INIT_DELAYED_WORK(&priv->led_act_off, ipw_bg_led_activity_off);
 INIT_WORK(&priv->merge_networks, ipw_merge_adhoc_network);





 tasklet_init(&priv->irq_tasklet, (void (*)(unsigned long))
       ipw_irq_tasklet, (unsigned long)priv);

 return ret;
}
