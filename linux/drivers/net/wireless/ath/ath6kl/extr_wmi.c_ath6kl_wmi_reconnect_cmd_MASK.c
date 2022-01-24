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
struct wmi_reconnect_cmd {int /*<<< orphan*/  bssid; int /*<<< orphan*/  channel; } ;
struct wmi {int traffic_class; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_RECONNECT_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct wmi *wmi, u8 if_idx, u8 *bssid,
			     u16 channel)
{
	struct sk_buff *skb;
	struct wmi_reconnect_cmd *cc;
	int ret;

	FUNC0(ATH6KL_DBG_WMI, "wmi reconnect bssid %pM freq %d\n",
		   bssid, channel);

	wmi->traffic_class = 100;

	skb = FUNC2(sizeof(struct wmi_reconnect_cmd));
	if (!skb)
		return -ENOMEM;

	cc = (struct wmi_reconnect_cmd *) skb->data;
	cc->channel = FUNC3(channel);

	if (bssid != NULL)
		FUNC4(cc->bssid, bssid, ETH_ALEN);

	ret = FUNC1(wmi, if_idx, skb, WMI_RECONNECT_CMDID,
				  NO_SYNC_WMIFLAG);

	return ret;
}