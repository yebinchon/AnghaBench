#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct mwifiex_private {int /*<<< orphan*/  bss_type; int /*<<< orphan*/  bss_num; } ;
struct mwifiex_opt_sleep_confirm {int /*<<< orphan*/  resp_ctrl; int /*<<< orphan*/  size; int /*<<< orphan*/  seq_num; int /*<<< orphan*/  action; int /*<<< orphan*/  command; } ;
struct TYPE_6__ {int /*<<< orphan*/  period; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_cmd_sleep_cfm_host_to_card_failure; } ;
struct TYPE_4__ {int (* host_to_card ) (struct mwifiex_adapter*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ;} ;
struct mwifiex_adapter {scalar_t__ iface_type; int pm_wakeup_card_req; TYPE_3__ sleep_period; int /*<<< orphan*/  work_flags; int /*<<< orphan*/  ps_state; TYPE_2__ dbg; int /*<<< orphan*/  intf_hdr_len; struct sk_buff* sleep_cfm; TYPE_1__ if_ops; int /*<<< orphan*/  seq_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  CMD_D ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_ANY ; 
 int /*<<< orphan*/  MWIFIEX_IS_HS_CONFIGURED ; 
 int /*<<< orphan*/  MWIFIEX_TYPE_CMD ; 
 scalar_t__ MWIFIEX_TYPE_LEN ; 
 scalar_t__ MWIFIEX_USB ; 
 int /*<<< orphan*/  MWIFIEX_USB_EP_CMD_EVENT ; 
 int /*<<< orphan*/  MWIFIEX_USB_TYPE_CMD ; 
 int /*<<< orphan*/  PS_STATE_SLEEP ; 
 int /*<<< orphan*/  PS_STATE_SLEEP_CFM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,struct mwifiex_opt_sleep_confirm*,int /*<<< orphan*/ ) ; 
 struct mwifiex_private* FUNC8 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mwifiex_private*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__) ; 
 int FUNC14 (struct mwifiex_adapter*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct mwifiex_adapter*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct mwifiex_adapter *adapter)
{
	int ret;
	struct mwifiex_private *priv;
	struct mwifiex_opt_sleep_confirm *sleep_cfm_buf =
				(struct mwifiex_opt_sleep_confirm *)
						adapter->sleep_cfm->data;
	struct sk_buff *sleep_cfm_tmp;

	priv = FUNC8(adapter, MWIFIEX_BSS_ROLE_ANY);

	adapter->seq_num++;
	sleep_cfm_buf->seq_num =
		FUNC1((FUNC0
					(adapter->seq_num, priv->bss_num,
					 priv->bss_type)));

	FUNC6(adapter, CMD,
		    "cmd: DNLD_CMD: %#x, act %#x, len %d, seqno %#x\n",
		FUNC4(sleep_cfm_buf->command),
		FUNC4(sleep_cfm_buf->action),
		FUNC4(sleep_cfm_buf->size),
		FUNC4(sleep_cfm_buf->seq_num));
	FUNC7(adapter, CMD_D, "SLEEP_CFM buffer: ", sleep_cfm_buf,
			 FUNC4(sleep_cfm_buf->size));

	if (adapter->iface_type == MWIFIEX_USB) {
		sleep_cfm_tmp =
			FUNC2(sizeof(struct mwifiex_opt_sleep_confirm)
				      + MWIFIEX_TYPE_LEN);
		if (!sleep_cfm_tmp) {
			FUNC6(adapter, ERROR,
				    "SLEEP_CFM: dev_alloc_skb failed\n");
			return -ENOMEM;
		}

		FUNC13(sleep_cfm_tmp, sizeof(struct mwifiex_opt_sleep_confirm)
			+ MWIFIEX_TYPE_LEN);
		FUNC10(MWIFIEX_USB_TYPE_CMD, sleep_cfm_tmp->data);
		FUNC5(sleep_cfm_tmp->data + MWIFIEX_TYPE_LEN,
		       adapter->sleep_cfm->data,
		       sizeof(struct mwifiex_opt_sleep_confirm));
		ret = adapter->if_ops.host_to_card(adapter,
						   MWIFIEX_USB_EP_CMD_EVENT,
						   sleep_cfm_tmp, NULL);
		if (ret != -EBUSY)
			FUNC3(sleep_cfm_tmp);
	} else {
		FUNC12(adapter->sleep_cfm, adapter->intf_hdr_len);
		ret = adapter->if_ops.host_to_card(adapter, MWIFIEX_TYPE_CMD,
						   adapter->sleep_cfm, NULL);
		FUNC11(adapter->sleep_cfm, adapter->intf_hdr_len);
	}

	if (ret == -1) {
		FUNC6(adapter, ERROR, "SLEEP_CFM: failed\n");
		adapter->dbg.num_cmd_sleep_cfm_host_to_card_failure++;
		return -1;
	}

	if (!FUNC4(sleep_cfm_buf->resp_ctrl))
		/* Response is not needed for sleep confirm command */
		adapter->ps_state = PS_STATE_SLEEP;
	else
		adapter->ps_state = PS_STATE_SLEEP_CFM;

	if (!FUNC4(sleep_cfm_buf->resp_ctrl) &&
	    (FUNC16(MWIFIEX_IS_HS_CONFIGURED, &adapter->work_flags) &&
	     !adapter->sleep_period.period)) {
		adapter->pm_wakeup_card_req = true;
		FUNC9(FUNC8
				(adapter, MWIFIEX_BSS_ROLE_ANY), true);
	}

	return ret;
}