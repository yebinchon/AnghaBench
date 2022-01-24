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
struct wmi_get_p2p_info {int /*<<< orphan*/  info_req_flags; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_GET_P2P_INFO_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct wmi *wmi, u8 if_idx, u32 info_req_flags)
{
	struct sk_buff *skb;
	struct wmi_get_p2p_info *p;

	skb = FUNC2(sizeof(*p));
	if (!skb)
		return -ENOMEM;

	FUNC0(ATH6KL_DBG_WMI, "info_req_cmd: flags=%x\n",
		   info_req_flags);
	p = (struct wmi_get_p2p_info *) skb->data;
	p->info_req_flags = FUNC3(info_req_flags);
	return FUNC1(wmi, if_idx, skb, WMI_GET_P2P_INFO_CMDID,
				   NO_SYNC_WMIFLAG);
}