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
struct wmi_peer_assoc_complete_arg {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wmi_peer_assoc_complete_arg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct ath10k *ar,
				     struct ieee80211_vif *vif,
				     struct ieee80211_sta *sta,
				     struct wmi_peer_assoc_complete_arg *arg)
{
	FUNC7(&ar->conf_mutex);

	FUNC8(arg, 0, sizeof(*arg));

	FUNC0(ar, vif, sta, arg);
	FUNC1(ar, vif, sta, arg);
	FUNC5(ar, vif, sta, arg);
	FUNC2(ar, vif, sta, arg);
	FUNC6(ar, vif, sta, arg);
	FUNC4(ar, vif, sta, arg);
	FUNC3(ar, vif, sta, arg);

	return 0;
}