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
struct wireless_dev {scalar_t__ iftype; } ;
struct wil6210_vif {scalar_t__ ptk_rekey_state; } ;
struct wil6210_priv {int /*<<< orphan*/  fw_capabilities; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ WIL_REKEY_IDLE ; 
 scalar_t__ WIL_REKEY_M3_RECEIVED ; 
 int /*<<< orphan*/  WMI_FW_CAPABILITY_SPLIT_REKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wireless_dev* FUNC1 (struct wil6210_vif*) ; 
 struct wil6210_priv* FUNC2 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct wil6210_vif *vif, struct sk_buff *skb)
{
	struct wil6210_priv *wil = FUNC2(vif);
	struct wireless_dev *wdev = FUNC1(vif);

	if (wdev->iftype != NL80211_IFTYPE_STATION ||
	    !FUNC0(WMI_FW_CAPABILITY_SPLIT_REKEY, wil->fw_capabilities))
		return;

	/* check if skb is a EAP message 3/4 */
	if (!FUNC3(wil, skb))
		return;

	if (vif->ptk_rekey_state == WIL_REKEY_IDLE)
		vif->ptk_rekey_state = WIL_REKEY_M3_RECEIVED;
}