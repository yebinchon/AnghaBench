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
struct iwl_scale_tbl_info {int /*<<< orphan*/  rate; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int /*<<< orphan*/  lq; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct ieee80211_sta*,struct iwl_lq_sta*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct iwl_mvm *mvm,
			       struct ieee80211_sta *sta,
			       struct iwl_lq_sta *lq_sta,
			       struct iwl_scale_tbl_info *tbl)
{
	FUNC1(mvm, sta, lq_sta, &tbl->rate);
	FUNC0(mvm, &lq_sta->lq);
}