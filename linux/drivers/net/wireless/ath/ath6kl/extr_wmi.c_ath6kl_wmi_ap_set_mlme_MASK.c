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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wmi_ap_set_mlme_cmd {int /*<<< orphan*/  reason; int /*<<< orphan*/  cmd; int /*<<< orphan*/  mac; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_AP_SET_MLME_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC5(struct wmi *wmip, u8 if_idx, u8 cmd, const u8 *mac,
			   u16 reason)
{
	struct sk_buff *skb;
	struct wmi_ap_set_mlme_cmd *cm;

	skb = FUNC2(sizeof(*cm));
	if (!skb)
		return -ENOMEM;

	cm = (struct wmi_ap_set_mlme_cmd *) skb->data;
	FUNC4(cm->mac, mac, ETH_ALEN);
	cm->reason = FUNC3(reason);
	cm->cmd = cmd;

	FUNC0(ATH6KL_DBG_WMI, "ap_set_mlme: cmd=%d reason=%d\n", cm->cmd,
		   cm->reason);

	return FUNC1(wmip, if_idx, skb, WMI_AP_SET_MLME_CMDID,
				   NO_SYNC_WMIFLAG);
}