#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct wmi_cmd_hdr {void* info1; void* cmd_id; } ;
struct wmi {int ep_id; TYPE_1__* parent_dev; } ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  len; } ;
typedef  enum wmi_sync_flag { ____Placeholder_wmi_sync_flag } wmi_sync_flag ;
typedef  enum wmi_cmd_id { ____Placeholder_wmi_cmd_id } wmi_cmd_id ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;
struct TYPE_3__ {int vif_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int /*<<< orphan*/  ATH6KL_DBG_WMI_DUMP ; 
 int EINVAL ; 
 int END_WMIFLAG ; 
 int /*<<< orphan*/  OPT_MSGTYPE ; 
 int SYNC_AFTER_WMIFLAG ; 
 int SYNC_BEFORE_WMIFLAG ; 
 int SYNC_BOTH_WMIFLAG ; 
 scalar_t__ FUNC0 (int) ; 
 int WMI_CMD_HDR_IF_ID_MASK ; 
 int WMI_OPT_TX_FRAME_CMDID ; 
 int /*<<< orphan*/  WMM_AC_BE ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wmi*,struct sk_buff*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wmi*,int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

int FUNC10(struct wmi *wmi, u8 if_idx, struct sk_buff *skb,
			enum wmi_cmd_id cmd_id, enum wmi_sync_flag sync_flag)
{
	struct wmi_cmd_hdr *cmd_hdr;
	enum htc_endpoint_id ep_id = wmi->ep_id;
	int ret;
	u16 info1;

	if (FUNC0(skb == NULL ||
		    (if_idx > (wmi->parent_dev->vif_max - 1)))) {
		FUNC8(skb);
		return -EINVAL;
	}

	FUNC3(ATH6KL_DBG_WMI, "wmi tx id %d len %d flag %d\n",
		   cmd_id, skb->len, sync_flag);
	FUNC4(ATH6KL_DBG_WMI_DUMP, NULL, "wmi tx ",
			skb->data, skb->len);

	if (sync_flag >= END_WMIFLAG) {
		FUNC8(skb);
		return -EINVAL;
	}

	if ((sync_flag == SYNC_BEFORE_WMIFLAG) ||
	    (sync_flag == SYNC_BOTH_WMIFLAG)) {
		/*
		 * Make sure all data currently queued is transmitted before
		 * the cmd execution.  Establish a new sync point.
		 */
		FUNC6(wmi, if_idx);
	}

	FUNC9(skb, sizeof(struct wmi_cmd_hdr));

	cmd_hdr = (struct wmi_cmd_hdr *) skb->data;
	cmd_hdr->cmd_id = FUNC7(cmd_id);
	info1 = if_idx & WMI_CMD_HDR_IF_ID_MASK;
	cmd_hdr->info1 = FUNC7(info1);

	/* Only for OPT_TX_CMD, use BE endpoint. */
	if (cmd_id == WMI_OPT_TX_FRAME_CMDID) {
		ret = FUNC5(wmi, skb, OPT_MSGTYPE,
					      false, false, 0, NULL, if_idx);
		if (ret) {
			FUNC8(skb);
			return ret;
		}
		ep_id = FUNC1(wmi->parent_dev, WMM_AC_BE);
	}

	FUNC2(wmi->parent_dev, skb, ep_id);

	if ((sync_flag == SYNC_AFTER_WMIFLAG) ||
	    (sync_flag == SYNC_BOTH_WMIFLAG)) {
		/*
		 * Make sure all new data queued waits for the command to
		 * execute. Establish a new sync point.
		 */
		FUNC6(wmi, if_idx);
	}

	return 0;
}