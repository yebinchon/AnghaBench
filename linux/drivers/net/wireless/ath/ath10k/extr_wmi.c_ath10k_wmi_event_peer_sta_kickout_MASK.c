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
struct wmi_peer_kick_ev_arg {int mac_addr; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ath10k {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int FUNC2 (struct ath10k*,struct sk_buff*,struct wmi_peer_kick_ev_arg*) ; 
 struct ieee80211_sta* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_peer_kick_ev_arg arg = {};
	struct ieee80211_sta *sta;
	int ret;

	ret = FUNC2(ar, skb, &arg);
	if (ret) {
		FUNC1(ar, "failed to parse peer kickout event: %d\n",
			    ret);
		return;
	}

	FUNC0(ar, ATH10K_DBG_WMI, "wmi event peer sta kickout %pM\n",
		   arg.mac_addr);

	FUNC5();

	sta = FUNC3(ar->hw, arg.mac_addr, NULL);
	if (!sta) {
		FUNC1(ar, "Spurious quick kickout for STA %pM\n",
			    arg.mac_addr);
		goto exit;
	}

	FUNC4(sta, 10);

exit:
	FUNC6();
}