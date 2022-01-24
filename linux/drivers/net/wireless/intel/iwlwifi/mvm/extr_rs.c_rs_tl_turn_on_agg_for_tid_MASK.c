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
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sta*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iwl_mvm *mvm,
				     struct iwl_lq_sta *lq_data, u8 tid,
				     struct ieee80211_sta *sta)
{
	int ret = -EAGAIN;

	FUNC0(mvm, "Starting Tx agg: STA: %pM tid: %d\n",
		     sta->addr, tid);

	/* start BA session until the peer sends del BA */
	ret = FUNC2(sta, tid, 0);
	if (ret == -EAGAIN) {
		/*
		 * driver and mac80211 is out of sync
		 * this might be cause by reloading firmware
		 * stop the tx ba session here
		 */
		FUNC1(mvm, "Fail start Tx agg on tid: %d\n",
			tid);
		FUNC3(sta, tid);
	}
	return ret;
}