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
struct wmi_listen_int_cmd {void* num_beacons; void* listen_intvl; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_SET_LISTEN_INT_CMDID ; 
 int FUNC0 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct wmi *wmi, u8 if_idx,
				  u16 listen_interval,
				  u16 listen_beacons)
{
	struct sk_buff *skb;
	struct wmi_listen_int_cmd *cmd;
	int ret;

	skb = FUNC1(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmi_listen_int_cmd *) skb->data;
	cmd->listen_intvl = FUNC2(listen_interval);
	cmd->num_beacons = FUNC2(listen_beacons);

	ret = FUNC0(wmi, if_idx, skb, WMI_SET_LISTEN_INT_CMDID,
				  NO_SYNC_WMIFLAG);
	return ret;
}