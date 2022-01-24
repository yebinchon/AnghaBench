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
struct wmi_setpmkid_cmd {int /*<<< orphan*/  enable; int /*<<< orphan*/  pmkid; int /*<<< orphan*/  bssid; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  PMKID_DISABLE ; 
 int /*<<< orphan*/  PMKID_ENABLE ; 
 int /*<<< orphan*/  WMI_SET_PMKID_CMDID ; 
 int FUNC0 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct wmi *wmi, u8 if_idx, const u8 *bssid,
			    const u8 *pmkid, bool set)
{
	struct sk_buff *skb;
	struct wmi_setpmkid_cmd *cmd;
	int ret;

	if (bssid == NULL)
		return -EINVAL;

	if (set && pmkid == NULL)
		return -EINVAL;

	skb = FUNC1(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmi_setpmkid_cmd *) skb->data;
	FUNC2(cmd->bssid, bssid, ETH_ALEN);
	if (set) {
		FUNC2(cmd->pmkid, pmkid, sizeof(cmd->pmkid));
		cmd->enable = PMKID_ENABLE;
	} else {
		FUNC3(cmd->pmkid, 0, sizeof(cmd->pmkid));
		cmd->enable = PMKID_DISABLE;
	}

	ret = FUNC0(wmi, if_idx, skb, WMI_SET_PMKID_CMDID,
				  NO_SYNC_WMIFLAG);

	return ret;
}