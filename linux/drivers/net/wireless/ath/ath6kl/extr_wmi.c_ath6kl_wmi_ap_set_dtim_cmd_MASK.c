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
typedef  int /*<<< orphan*/  u32 ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct set_dtim_cmd {int /*<<< orphan*/  dtim_period; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_AP_SET_DTIM_CMDID ; 
 int FUNC0 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct wmi *wmi, u8 if_idx, u32 dtim_period)
{
	struct sk_buff *skb;
	struct set_dtim_cmd *cmd;

	skb = FUNC1(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct set_dtim_cmd *) skb->data;

	cmd->dtim_period = FUNC2(dtim_period);
	return FUNC0(wmi, if_idx, skb,
				   WMI_AP_SET_DTIM_CMDID, NO_SYNC_WMIFLAG);
}