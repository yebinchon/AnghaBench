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
struct wil6210_vif {int ptk_rekey_state; int /*<<< orphan*/  enable_tx_key_worker; } ;
struct wil6210_priv {int /*<<< orphan*/  wmi_wq; int /*<<< orphan*/  eap_lock; int /*<<< orphan*/  fw_capabilities; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_STATION ; 
#define  WIL_REKEY_IDLE 130 
#define  WIL_REKEY_M3_RECEIVED 129 
#define  WIL_REKEY_WAIT_M4_SENT 128 
 int /*<<< orphan*/  WMI_FW_CAPABILITY_SPLIT_REKEY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wireless_dev* FUNC4 (struct wil6210_vif*) ; 
 struct wil6210_priv* FUNC5 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_priv*,struct sk_buff*) ; 

void FUNC9(struct wil6210_vif *vif, struct sk_buff *skb)
{
	struct wil6210_priv *wil = FUNC5(vif);
	struct wireless_dev *wdev = FUNC4(vif);
	bool q = false;

	if (wdev->iftype != NL80211_IFTYPE_STATION ||
	    !FUNC3(WMI_FW_CAPABILITY_SPLIT_REKEY, wil->fw_capabilities))
		return;

	/* check if skb is an EAP message 4/4 */
	if (!FUNC8(wil, skb))
		return;

	FUNC1(&wil->eap_lock);
	switch (vif->ptk_rekey_state) {
	case WIL_REKEY_IDLE:
		/* ignore idle state, can happen due to M4 retransmission */
		break;
	case WIL_REKEY_M3_RECEIVED:
		vif->ptk_rekey_state = WIL_REKEY_IDLE;
		break;
	case WIL_REKEY_WAIT_M4_SENT:
		q = true;
		break;
	default:
		FUNC7(wil, "Unknown rekey state = %d",
			vif->ptk_rekey_state);
	}
	FUNC2(&wil->eap_lock);

	if (q) {
		q = FUNC0(wil->wmi_wq, &vif->enable_tx_key_worker);
		FUNC6(wil, "queue_work of enable_tx_key_worker -> %d\n",
			     q);
	}
}