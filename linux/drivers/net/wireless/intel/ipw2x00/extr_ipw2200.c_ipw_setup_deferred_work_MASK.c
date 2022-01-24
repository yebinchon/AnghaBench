#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ipw_priv {int /*<<< orphan*/  irq_tasklet; int /*<<< orphan*/  qos_activate; int /*<<< orphan*/  merge_networks; int /*<<< orphan*/  led_act_off; int /*<<< orphan*/  led_link_off; int /*<<< orphan*/  led_link_on; int /*<<< orphan*/  link_down; int /*<<< orphan*/  link_up; int /*<<< orphan*/  scan_check; int /*<<< orphan*/  roam; int /*<<< orphan*/  abort_scan; int /*<<< orphan*/  gather_stats; int /*<<< orphan*/  scan_event; int /*<<< orphan*/  request_passive_scan; int /*<<< orphan*/  request_direct_scan; int /*<<< orphan*/  request_scan; int /*<<< orphan*/  down; int /*<<< orphan*/  up; int /*<<< orphan*/  rf_kill; int /*<<< orphan*/  adapter_restart; int /*<<< orphan*/  rx_replenish; int /*<<< orphan*/  system_config; int /*<<< orphan*/  disassociate; int /*<<< orphan*/  associate; int /*<<< orphan*/  adhoc_check; int /*<<< orphan*/  wait_state; int /*<<< orphan*/  wait_command_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipw_bg_abort_scan ; 
 int /*<<< orphan*/  ipw_bg_adapter_restart ; 
 int /*<<< orphan*/  ipw_bg_adhoc_check ; 
 int /*<<< orphan*/  ipw_bg_associate ; 
 int /*<<< orphan*/  ipw_bg_disassociate ; 
 int /*<<< orphan*/  ipw_bg_down ; 
 int /*<<< orphan*/  ipw_bg_gather_stats ; 
 int /*<<< orphan*/  ipw_bg_led_activity_off ; 
 int /*<<< orphan*/  ipw_bg_led_link_off ; 
 int /*<<< orphan*/  ipw_bg_led_link_on ; 
 int /*<<< orphan*/  ipw_bg_link_down ; 
 int /*<<< orphan*/  ipw_bg_link_up ; 
 int /*<<< orphan*/  ipw_bg_qos_activate ; 
 int /*<<< orphan*/  ipw_bg_rf_kill ; 
 int /*<<< orphan*/  ipw_bg_roam ; 
 int /*<<< orphan*/  ipw_bg_rx_queue_replenish ; 
 int /*<<< orphan*/  ipw_bg_scan_check ; 
 int /*<<< orphan*/  ipw_bg_up ; 
 scalar_t__ ipw_irq_tasklet ; 
 int /*<<< orphan*/  ipw_merge_adhoc_network ; 
 int /*<<< orphan*/  ipw_request_direct_scan ; 
 int /*<<< orphan*/  ipw_request_passive_scan ; 
 int /*<<< orphan*/  ipw_request_scan ; 
 int /*<<< orphan*/  ipw_scan_event ; 
 int /*<<< orphan*/  ipw_system_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ipw_priv *priv)
{
	int ret = 0;

	FUNC2(&priv->wait_command_queue);
	FUNC2(&priv->wait_state);

	FUNC0(&priv->adhoc_check, ipw_bg_adhoc_check);
	FUNC1(&priv->associate, ipw_bg_associate);
	FUNC1(&priv->disassociate, ipw_bg_disassociate);
	FUNC1(&priv->system_config, ipw_system_config);
	FUNC1(&priv->rx_replenish, ipw_bg_rx_queue_replenish);
	FUNC1(&priv->adapter_restart, ipw_bg_adapter_restart);
	FUNC0(&priv->rf_kill, ipw_bg_rf_kill);
	FUNC1(&priv->up, ipw_bg_up);
	FUNC1(&priv->down, ipw_bg_down);
	FUNC0(&priv->request_scan, ipw_request_scan);
	FUNC0(&priv->request_direct_scan, ipw_request_direct_scan);
	FUNC0(&priv->request_passive_scan, ipw_request_passive_scan);
	FUNC0(&priv->scan_event, ipw_scan_event);
	FUNC0(&priv->gather_stats, ipw_bg_gather_stats);
	FUNC1(&priv->abort_scan, ipw_bg_abort_scan);
	FUNC1(&priv->roam, ipw_bg_roam);
	FUNC0(&priv->scan_check, ipw_bg_scan_check);
	FUNC1(&priv->link_up, ipw_bg_link_up);
	FUNC1(&priv->link_down, ipw_bg_link_down);
	FUNC0(&priv->led_link_on, ipw_bg_led_link_on);
	FUNC0(&priv->led_link_off, ipw_bg_led_link_off);
	FUNC0(&priv->led_act_off, ipw_bg_led_activity_off);
	FUNC1(&priv->merge_networks, ipw_merge_adhoc_network);

#ifdef CONFIG_IPW2200_QOS
	INIT_WORK(&priv->qos_activate, ipw_bg_qos_activate);
#endif				/* CONFIG_IPW2200_QOS */

	FUNC3(&priv->irq_tasklet, (void (*)(unsigned long))
		     ipw_irq_tasklet, (unsigned long)priv);

	return ret;
}