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
struct set_beacon_int_cmd {int /*<<< orphan*/  beacon_intvl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_SET_BEACON_INT_CMDID ; 
 int FUNC0 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct wmi *wmi, u8 if_idx,
				       u32 beacon_intvl)
{
	struct sk_buff *skb;
	struct set_beacon_int_cmd *cmd;

	skb = FUNC1(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct set_beacon_int_cmd *) skb->data;

	cmd->beacon_intvl = FUNC2(beacon_intvl);
	return FUNC0(wmi, if_idx, skb,
				   WMI_SET_BEACON_INT_CMDID, NO_SYNC_WMIFLAG);
}