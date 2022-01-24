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
typedef  int u32 ;
struct lbs_private {int /*<<< orphan*/  dev; int /*<<< orphan*/  needtowakeup; int /*<<< orphan*/  psstate; int /*<<< orphan*/  ds_awake_q; int /*<<< orphan*/  wakeup_dev_required; int /*<<< orphan*/  is_deep_sleep; int /*<<< orphan*/  (* reset_deep_sleep_wakeup ) (struct lbs_private*) ;int /*<<< orphan*/  host_sleep_q; int /*<<< orphan*/  is_host_sleep_activated; int /*<<< orphan*/  cmdpendingq; } ;
struct cmd_header {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_WAKEUP_CONFIRM ; 
#define  MACREG_INT_CODE_ADHOC_BCN_LOST 146 
#define  MACREG_INT_CODE_DEAUTHENTICATED 145 
#define  MACREG_INT_CODE_DEEP_SLEEP_AWAKE 144 
#define  MACREG_INT_CODE_DISASSOCIATED 143 
#define  MACREG_INT_CODE_HOST_AWAKE 142 
#define  MACREG_INT_CODE_INIT_DONE 141 
#define  MACREG_INT_CODE_LINK_LOST_NO_SCAN 140 
#define  MACREG_INT_CODE_LINK_SENSED 139 
#define  MACREG_INT_CODE_MAX_FAIL 138 
#define  MACREG_INT_CODE_MESH_AUTO_STARTED 137 
#define  MACREG_INT_CODE_MIB_CHANGED 136 
#define  MACREG_INT_CODE_MIC_ERR_MULTICAST 135 
#define  MACREG_INT_CODE_MIC_ERR_UNICAST 134 
#define  MACREG_INT_CODE_PS_AWAKE 133 
#define  MACREG_INT_CODE_PS_SLEEP 132 
#define  MACREG_INT_CODE_RSSI_HIGH 131 
#define  MACREG_INT_CODE_RSSI_LOW 130 
#define  MACREG_INT_CODE_SNR_HIGH 129 
#define  MACREG_INT_CODE_SNR_LOW 128 
 int /*<<< orphan*/  PS_MODE_ACTION_EXIT_PS ; 
 int /*<<< orphan*/  PS_STATE_AWAKE ; 
 int /*<<< orphan*/  PS_STATE_FULL_POWER ; 
 int /*<<< orphan*/  PS_STATE_PRE_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_header*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct lbs_private *priv, u32 event)
{
	int ret = 0;
	struct cmd_header cmd;

	switch (event) {
	case MACREG_INT_CODE_LINK_SENSED:
		FUNC1("EVENT: link sensed\n");
		break;

	case MACREG_INT_CODE_DEAUTHENTICATED:
		FUNC1("EVENT: deauthenticated\n");
		FUNC2(priv, false);
		break;

	case MACREG_INT_CODE_DISASSOCIATED:
		FUNC1("EVENT: disassociated\n");
		FUNC2(priv, false);
		break;

	case MACREG_INT_CODE_LINK_LOST_NO_SCAN:
		FUNC1("EVENT: link lost\n");
		FUNC2(priv, true);
		break;

	case MACREG_INT_CODE_PS_SLEEP:
		FUNC1("EVENT: ps sleep\n");

		/* handle unexpected PS SLEEP event */
		if (priv->psstate == PS_STATE_FULL_POWER) {
			FUNC1(
			       "EVENT: in FULL POWER mode, ignoring PS_SLEEP\n");
			break;
		}
		if (!FUNC6(&priv->cmdpendingq)) {
			FUNC1("EVENT: commands in queue, do not sleep\n");
			break;
		}
		priv->psstate = PS_STATE_PRE_SLEEP;

		FUNC3(priv);

		break;

	case MACREG_INT_CODE_HOST_AWAKE:
		FUNC1("EVENT: host awake\n");
		if (priv->reset_deep_sleep_wakeup)
			priv->reset_deep_sleep_wakeup(priv);
		priv->is_deep_sleep = 0;
		FUNC0(priv, CMD_802_11_WAKEUP_CONFIRM, &cmd,
				sizeof(cmd));
		priv->is_host_sleep_activated = 0;
		FUNC11(&priv->host_sleep_q);
		break;

	case MACREG_INT_CODE_DEEP_SLEEP_AWAKE:
		if (priv->reset_deep_sleep_wakeup)
			priv->reset_deep_sleep_wakeup(priv);
		FUNC1("EVENT: ds awake\n");
		priv->is_deep_sleep = 0;
		priv->wakeup_dev_required = 0;
		FUNC11(&priv->ds_awake_q);
		break;

	case MACREG_INT_CODE_PS_AWAKE:
		FUNC1("EVENT: ps awake\n");
		/* handle unexpected PS AWAKE event */
		if (priv->psstate == PS_STATE_FULL_POWER) {
			FUNC1(
			       "EVENT: In FULL POWER mode - ignore PS AWAKE\n");
			break;
		}

		priv->psstate = PS_STATE_AWAKE;

		if (priv->needtowakeup) {
			/*
			 * wait for the command processing to finish
			 * before resuming sending
			 * priv->needtowakeup will be set to FALSE
			 * in lbs_ps_wakeup()
			 */
			FUNC1("waking up ...\n");
			FUNC5(priv, PS_MODE_ACTION_EXIT_PS, false);
		}
		break;

	case MACREG_INT_CODE_MIC_ERR_UNICAST:
		FUNC1("EVENT: UNICAST MIC ERROR\n");
		FUNC4(priv, event);
		break;

	case MACREG_INT_CODE_MIC_ERR_MULTICAST:
		FUNC1("EVENT: MULTICAST MIC ERROR\n");
		FUNC4(priv, event);
		break;

	case MACREG_INT_CODE_MIB_CHANGED:
		FUNC1("EVENT: MIB CHANGED\n");
		break;
	case MACREG_INT_CODE_INIT_DONE:
		FUNC1("EVENT: INIT DONE\n");
		break;
	case MACREG_INT_CODE_ADHOC_BCN_LOST:
		FUNC1("EVENT: ADHOC beacon lost\n");
		break;
	case MACREG_INT_CODE_RSSI_LOW:
		FUNC7(priv->dev, "EVENT: rssi low\n");
		break;
	case MACREG_INT_CODE_SNR_LOW:
		FUNC7(priv->dev, "EVENT: snr low\n");
		break;
	case MACREG_INT_CODE_MAX_FAIL:
		FUNC7(priv->dev, "EVENT: max fail\n");
		break;
	case MACREG_INT_CODE_RSSI_HIGH:
		FUNC7(priv->dev, "EVENT: rssi high\n");
		break;
	case MACREG_INT_CODE_SNR_HIGH:
		FUNC7(priv->dev, "EVENT: snr high\n");
		break;

	case MACREG_INT_CODE_MESH_AUTO_STARTED:
		/* Ignore spurious autostart events */
		FUNC8(priv->dev, "EVENT: MESH_AUTO_STARTED (ignoring)\n");
		break;

	default:
		FUNC7(priv->dev, "EVENT: unknown event id %d\n", event);
		break;
	}

	return ret;
}