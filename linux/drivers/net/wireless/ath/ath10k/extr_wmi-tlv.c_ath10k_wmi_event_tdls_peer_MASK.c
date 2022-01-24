#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct wmi_tlv_tdls_peer_event {int /*<<< orphan*/  vdev_id; TYPE_1__ peer_macaddr; int /*<<< orphan*/  peer_reason; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ath10k_vif {int /*<<< orphan*/  vif; } ;
struct ath10k {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int /*<<< orphan*/  NL80211_TDLS_TEARDOWN ; 
 int /*<<< orphan*/  WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE ; 
#define  WMI_TDLS_TEARDOWN_REASON_PTR_TIMEOUT 130 
#define  WMI_TDLS_TEARDOWN_REASON_RSSI 129 
#define  WMI_TDLS_TEARDOWN_REASON_TX 128 
 size_t WMI_TLV_TAG_STRUCT_TDLS_PEER_EVENT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct ath10k_vif* FUNC2 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*) ; 
 void** FUNC4 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void const**) ; 

__attribute__((used)) static void FUNC8(struct ath10k *ar, struct sk_buff *skb)
{
	struct ieee80211_sta *station;
	const struct wmi_tlv_tdls_peer_event *ev;
	const void **tb;
	struct ath10k_vif *arvif;

	tb = FUNC4(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		FUNC3(ar, "tdls peer failed to parse tlv");
		return;
	}
	ev = tb[WMI_TLV_TAG_STRUCT_TDLS_PEER_EVENT];
	if (!ev) {
		FUNC7(tb);
		FUNC3(ar, "tdls peer NULL event");
		return;
	}

	switch (FUNC1(ev->peer_reason)) {
	case WMI_TDLS_TEARDOWN_REASON_TX:
	case WMI_TDLS_TEARDOWN_REASON_RSSI:
	case WMI_TDLS_TEARDOWN_REASON_PTR_TIMEOUT:
		station = FUNC5(ar->hw,
						       ev->peer_macaddr.addr,
						       NULL);
		if (!station) {
			FUNC3(ar, "did not find station from tdls peer event");
			FUNC7(tb);
			return;
		}
		arvif = FUNC2(ar, FUNC1(ev->vdev_id));
		FUNC6(
					arvif->vif, station->addr,
					NL80211_TDLS_TEARDOWN,
					WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE,
					GFP_ATOMIC
					);
		break;
	}
	FUNC7(tb);
}