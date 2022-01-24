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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wmi_bss_filter_cmd {int /*<<< orphan*/  ie_mask; scalar_t__ bss_filter; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ LAST_BSS_FILTER ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_SET_BSS_FILTER_CMDID ; 
 int FUNC0 (struct wmi*,scalar_t__,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct wmi *wmi, u8 if_idx, u8 filter, u32 ie_mask)
{
	struct sk_buff *skb;
	struct wmi_bss_filter_cmd *cmd;
	int ret;

	if (filter >= LAST_BSS_FILTER)
		return -EINVAL;

	skb = FUNC1(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmi_bss_filter_cmd *) skb->data;
	cmd->bss_filter = filter;
	cmd->ie_mask = FUNC2(ie_mask);

	ret = FUNC0(wmi, if_idx, skb, WMI_SET_BSS_FILTER_CMDID,
				  NO_SYNC_WMIFLAG);
	return ret;
}