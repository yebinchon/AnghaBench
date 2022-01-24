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
struct rs_tx_column {int dummy; } ;
struct rs_rate {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_sta_vht_cap {int cap; } ;
struct ieee80211_sta_ht_cap {int cap; } ;
struct ieee80211_sta {struct ieee80211_sta_vht_cap vht_cap; struct ieee80211_sta_ht_cap ht_cap; } ;

/* Variables and functions */
 int IEEE80211_HT_CAP_SGI_20 ; 
 int IEEE80211_HT_CAP_SGI_40 ; 
 int IEEE80211_VHT_CAP_SHORT_GI_160 ; 
 int IEEE80211_VHT_CAP_SHORT_GI_80 ; 
 scalar_t__ FUNC0 (struct rs_rate*) ; 
 scalar_t__ FUNC1 (struct rs_rate*) ; 
 scalar_t__ FUNC2 (struct rs_rate*) ; 
 scalar_t__ FUNC3 (struct rs_rate*) ; 

__attribute__((used)) static bool FUNC4(struct iwl_mvm *mvm, struct ieee80211_sta *sta,
			 struct rs_rate *rate,
			 const struct rs_tx_column *next_col)
{
	struct ieee80211_sta_ht_cap *ht_cap = &sta->ht_cap;
	struct ieee80211_sta_vht_cap *vht_cap = &sta->vht_cap;

	if (FUNC1(rate) && (ht_cap->cap &
			     IEEE80211_HT_CAP_SGI_20))
		return true;
	if (FUNC2(rate) && (ht_cap->cap &
			     IEEE80211_HT_CAP_SGI_40))
		return true;
	if (FUNC3(rate) && (vht_cap->cap &
			     IEEE80211_VHT_CAP_SHORT_GI_80))
		return true;
	if (FUNC0(rate) && (vht_cap->cap &
			     IEEE80211_VHT_CAP_SHORT_GI_160))
		return true;

	return false;
}