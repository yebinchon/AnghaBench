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
struct wmi_ap_set_pvb_cmd {int /*<<< orphan*/  flag; void* rsvd; void* aid; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_AP_SET_PVB_CMDID ; 
 int FUNC0 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct wmi *wmi, u8 if_idx, u16 aid,
			   bool flag)
{
	struct sk_buff *skb;
	struct wmi_ap_set_pvb_cmd *cmd;
	int ret;

	skb = FUNC1(sizeof(struct wmi_ap_set_pvb_cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmi_ap_set_pvb_cmd *) skb->data;
	cmd->aid = FUNC2(aid);
	cmd->rsvd = FUNC2(0);
	cmd->flag = FUNC3(flag);

	ret = FUNC0(wmi, if_idx, skb, WMI_AP_SET_PVB_CMDID,
				  NO_SYNC_WMIFLAG);

	return ret;
}