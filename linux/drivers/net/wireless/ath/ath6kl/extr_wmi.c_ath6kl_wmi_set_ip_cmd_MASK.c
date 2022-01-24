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
struct wmi_set_ip_cmd {void** ips; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_SET_IP_CMDID ; 
 int FUNC0 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*) ; 

int FUNC3(struct wmi *wmi, u8 if_idx,
			  __be32 ips0, __be32 ips1)
{
	struct sk_buff *skb;
	struct wmi_set_ip_cmd *cmd;
	int ret;

	/* Multicast address are not valid */
	if (FUNC2(ips0) ||
	    FUNC2(ips1))
		return -EINVAL;

	skb = FUNC1(sizeof(struct wmi_set_ip_cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmi_set_ip_cmd *) skb->data;
	cmd->ips[0] = ips0;
	cmd->ips[1] = ips1;

	ret = FUNC0(wmi, if_idx, skb, WMI_SET_IP_CMDID,
				  NO_SYNC_WMIFLAG);
	return ret;
}