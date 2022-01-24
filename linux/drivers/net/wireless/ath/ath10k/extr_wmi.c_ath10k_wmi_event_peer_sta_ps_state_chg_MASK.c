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
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct wmi_peer_sta_ps_state_chg_event {int /*<<< orphan*/  peer_ps_state; TYPE_1__ peer_macaddr; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ath10k_sta {int /*<<< orphan*/  peer_ps_state; } ;
struct ath10k {int /*<<< orphan*/  hw; int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_peer_sta_ps_state_chg_event *ev;
	struct ieee80211_sta *sta;
	struct ath10k_sta *arsta;
	u8 peer_addr[ETH_ALEN];

	FUNC4(&ar->data_lock);

	ev = (struct wmi_peer_sta_ps_state_chg_event *)skb->data;
	FUNC2(peer_addr, ev->peer_macaddr.addr);

	FUNC5();

	sta = FUNC3(ar->hw, peer_addr, NULL);

	if (!sta) {
		FUNC1(ar, "failed to find station entry %pM\n",
			    peer_addr);
		goto exit;
	}

	arsta = (struct ath10k_sta *)sta->drv_priv;
	arsta->peer_ps_state = FUNC0(ev->peer_ps_state);

exit:
	FUNC6();
}