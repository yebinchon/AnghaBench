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
struct wmi_mcast_filter_cmd {int mcast_all_enable; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_MCAST_FILTER_CMDID ; 
 int FUNC0 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 

int FUNC2(struct wmi *wmi, u8 if_idx, bool mc_all_on)
{
	struct sk_buff *skb;
	struct wmi_mcast_filter_cmd *cmd;
	int ret;

	skb = FUNC1(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmi_mcast_filter_cmd *) skb->data;
	cmd->mcast_all_enable = mc_all_on;

	ret = FUNC0(wmi, if_idx, skb, WMI_MCAST_FILTER_CMDID,
				  NO_SYNC_WMIFLAG);
	return ret;
}