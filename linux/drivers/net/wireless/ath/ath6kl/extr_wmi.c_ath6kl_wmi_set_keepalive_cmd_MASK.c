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
struct wmi_set_keepalive_cmd {int /*<<< orphan*/  keep_alive_intvl; } ;
struct wmi {int /*<<< orphan*/  parent_dev; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_SET_KEEPALIVE_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 

int FUNC3(struct wmi *wmi, u8 if_idx,
				 u8 keep_alive_intvl)
{
	struct sk_buff *skb;
	struct wmi_set_keepalive_cmd *cmd;
	int ret;

	skb = FUNC2(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmi_set_keepalive_cmd *) skb->data;
	cmd->keep_alive_intvl = keep_alive_intvl;

	ret = FUNC1(wmi, if_idx, skb, WMI_SET_KEEPALIVE_CMDID,
				  NO_SYNC_WMIFLAG);

	if (ret == 0)
		FUNC0(wmi->parent_dev, keep_alive_intvl);

	return ret;
}