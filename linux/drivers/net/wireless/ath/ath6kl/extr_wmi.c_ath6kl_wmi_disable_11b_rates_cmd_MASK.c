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
struct wmi_disable_11b_rates_cmd {int disable; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_DISABLE_11B_RATES_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 

int FUNC3(struct wmi *wmi, bool disable)
{
	struct sk_buff *skb;
	struct wmi_disable_11b_rates_cmd *cmd;

	skb = FUNC2(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	FUNC0(ATH6KL_DBG_WMI, "disable_11b_rates_cmd: disable=%u\n",
		   disable);
	cmd = (struct wmi_disable_11b_rates_cmd *) skb->data;
	cmd->disable = disable ? 1 : 0;

	return FUNC1(wmi, 0, skb, WMI_DISABLE_11B_RATES_CMDID,
				   NO_SYNC_WMIFLAG);
}