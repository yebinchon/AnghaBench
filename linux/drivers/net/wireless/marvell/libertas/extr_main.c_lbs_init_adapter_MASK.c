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
typedef  int /*<<< orphan*/  u32 ;
struct lbs_private {int mac_control; int radio_on; int authtype_auto; int /*<<< orphan*/  event_fifo; scalar_t__* resp_len; scalar_t__ resp_idx; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  cmdpendingq; int /*<<< orphan*/  cmdfreeq; int /*<<< orphan*/  auto_deepsleep_timer; int /*<<< orphan*/  tx_lockup_timer; int /*<<< orphan*/  command_timer; int /*<<< orphan*/  lock; int /*<<< orphan*/  fw_waitq; int /*<<< orphan*/  host_sleep_q; scalar_t__ is_host_sleep_activated; scalar_t__ is_host_sleep_configured; int /*<<< orphan*/  scan_q; int /*<<< orphan*/  ds_awake_q; scalar_t__ wakeup_dev_required; scalar_t__ deep_sleep_required; scalar_t__ is_auto_deep_sleep_enabled; scalar_t__ is_deep_sleep; int /*<<< orphan*/  psstate; int /*<<< orphan*/  psmode; int /*<<< orphan*/  channel; int /*<<< orphan*/  connect_status; int /*<<< orphan*/  current_addr; } ;

/* Variables and functions */
 int CMD_ACT_MAC_RX_ON ; 
 int CMD_ACT_MAC_TX_ON ; 
 int /*<<< orphan*/  DEFAULT_AD_HOC_CHANNEL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LBS802_11POWERMODECAM ; 
 int /*<<< orphan*/  LBS_DISCONNECTED ; 
 int /*<<< orphan*/  PS_STATE_FULL_POWER ; 
 int /*<<< orphan*/  auto_deepsleep_timer_fn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  lbs_cmd_timeout_handler ; 
 int /*<<< orphan*/  lbs_tx_lockup_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct lbs_private *priv)
{
	int ret;

	FUNC1(priv->current_addr);

	priv->connect_status = LBS_DISCONNECTED;
	priv->channel = DEFAULT_AD_HOC_CHANNEL;
	priv->mac_control = CMD_ACT_MAC_RX_ON | CMD_ACT_MAC_TX_ON;
	priv->radio_on = 1;
	priv->psmode = LBS802_11POWERMODECAM;
	priv->psstate = PS_STATE_FULL_POWER;
	priv->is_deep_sleep = 0;
	priv->is_auto_deep_sleep_enabled = 0;
	priv->deep_sleep_required = 0;
	priv->wakeup_dev_required = 0;
	FUNC2(&priv->ds_awake_q);
	FUNC2(&priv->scan_q);
	priv->authtype_auto = 1;
	priv->is_host_sleep_configured = 0;
	priv->is_host_sleep_activated = 0;
	FUNC2(&priv->host_sleep_q);
	FUNC2(&priv->fw_waitq);
	FUNC5(&priv->lock);

	FUNC8(&priv->command_timer, lbs_cmd_timeout_handler, 0);
	FUNC8(&priv->tx_lockup_timer, lbs_tx_lockup_handler, 0);
	FUNC8(&priv->auto_deepsleep_timer, auto_deepsleep_timer_fn, 0);

	FUNC0(&priv->cmdfreeq);
	FUNC0(&priv->cmdpendingq);

	FUNC7(&priv->driver_lock);

	/* Allocate the command buffers */
	if (FUNC4(priv)) {
		FUNC6("Out of memory allocating command buffers\n");
		ret = -ENOMEM;
		goto out;
	}
	priv->resp_idx = 0;
	priv->resp_len[0] = priv->resp_len[1] = 0;

	/* Create the event FIFO */
	ret = FUNC3(&priv->event_fifo, sizeof(u32) * 16, GFP_KERNEL);
	if (ret) {
		FUNC6("Out of memory allocating event FIFO buffer\n");
		goto out;
	}

out:
	return ret;
}