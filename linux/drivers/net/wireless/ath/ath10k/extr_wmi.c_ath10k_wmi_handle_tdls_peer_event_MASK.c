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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int addr; } ;
struct wmi_tdls_peer_event {TYPE_1__ peer_macaddr; int /*<<< orphan*/  peer_reason; int /*<<< orphan*/  peer_status; int /*<<< orphan*/  vdev_id; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k_vif {int /*<<< orphan*/  vif; } ;
struct ath10k_peer {int dummy; } ;
struct ath10k {int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NL80211_TDLS_TEARDOWN ; 
 int /*<<< orphan*/  WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE ; 
 int /*<<< orphan*/  WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED ; 
#define  WMI_TDLS_SHOULD_TEARDOWN 131 
#define  WMI_TDLS_TEARDOWN_REASON_NO_RESPONSE 130 
#define  WMI_TDLS_TEARDOWN_REASON_PTR_TIMEOUT 129 
#define  WMI_TDLS_TEARDOWN_REASON_RSSI 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 struct ath10k_vif* FUNC3 (struct ath10k*,int) ; 
 struct ath10k_peer* FUNC4 (struct ath10k*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_tdls_peer_event *ev;
	struct ath10k_peer *peer;
	struct ath10k_vif *arvif;
	int vdev_id;
	int peer_status;
	int peer_reason;
	u8 reason;

	if (skb->len < sizeof(*ev)) {
		FUNC2(ar, "received tdls peer event with invalid size (%d bytes)\n",
			   skb->len);
		return;
	}

	ev = (struct wmi_tdls_peer_event *)skb->data;
	vdev_id = FUNC0(ev->vdev_id);
	peer_status = FUNC0(ev->peer_status);
	peer_reason = FUNC0(ev->peer_reason);

	FUNC7(&ar->data_lock);
	peer = FUNC4(ar, vdev_id, ev->peer_macaddr.addr);
	FUNC8(&ar->data_lock);

	if (!peer) {
		FUNC5(ar, "failed to find peer entry for %pM\n",
			    ev->peer_macaddr.addr);
		return;
	}

	switch (peer_status) {
	case WMI_TDLS_SHOULD_TEARDOWN:
		switch (peer_reason) {
		case WMI_TDLS_TEARDOWN_REASON_PTR_TIMEOUT:
		case WMI_TDLS_TEARDOWN_REASON_NO_RESPONSE:
		case WMI_TDLS_TEARDOWN_REASON_RSSI:
			reason = WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE;
			break;
		default:
			reason = WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED;
			break;
		}

		arvif = FUNC3(ar, vdev_id);
		if (!arvif) {
			FUNC5(ar, "received tdls peer event for invalid vdev id %u\n",
				    vdev_id);
			return;
		}

		FUNC6(arvif->vif, ev->peer_macaddr.addr,
					    NL80211_TDLS_TEARDOWN, reason,
					    GFP_ATOMIC);

		FUNC1(ar, ATH10K_DBG_WMI,
			   "received tdls teardown event for peer %pM reason %u\n",
			   ev->peer_macaddr.addr, peer_reason);
		break;
	default:
		FUNC1(ar, ATH10K_DBG_WMI,
			   "received unknown tdls peer event %u\n",
			   peer_status);
		break;
	}
}