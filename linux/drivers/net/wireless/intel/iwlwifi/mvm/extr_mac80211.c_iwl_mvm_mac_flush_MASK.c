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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_vif {int ap_sta_id; } ;
struct iwl_mvm_sta {int /*<<< orphan*/  tfd_queue_msk; struct ieee80211_vif* vif; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  add_stream_wk; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int /*<<< orphan*/  tdls; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*) ; 
 struct iwl_mvm* FUNC3 (struct ieee80211_hw*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct iwl_mvm*,struct iwl_mvm_sta*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct iwl_mvm*) ; 
 struct iwl_mvm_sta* FUNC9 (struct ieee80211_sta*) ; 
 struct iwl_mvm_vif* FUNC10 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm*,struct iwl_mvm_sta*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif, u32 queues, bool drop)
{
	struct iwl_mvm *mvm = FUNC3(hw);
	struct iwl_mvm_vif *mvmvif;
	struct iwl_mvm_sta *mvmsta;
	struct ieee80211_sta *sta;
	int i;
	u32 msk = 0;

	if (!vif) {
		FUNC6(mvm, queues, drop);
		return;
	}

	if (vif->type != NL80211_IFTYPE_STATION)
		return;

	/* Make sure we're done with the deferred traffic before flushing */
	FUNC5(&mvm->add_stream_wk);

	FUNC14(&mvm->mutex);
	mvmvif = FUNC10(vif);

	/* flush the AP-station and all TDLS peers */
	for (i = 0; i < FUNC0(mvm->fw_id_to_mac_id); i++) {
		sta = FUNC16(mvm->fw_id_to_mac_id[i],
						FUNC13(&mvm->mutex));
		if (FUNC1(sta))
			continue;

		mvmsta = FUNC9(sta);
		if (mvmsta->vif != vif)
			continue;

		/* make sure only TDLS peers or the AP are flushed */
		FUNC4(i != mvmvif->ap_sta_id && !sta->tdls);

		if (drop) {
			if (FUNC7(mvm, mvmsta, false, 0))
				FUNC2(mvm, "flush request fail\n");
		} else {
			msk |= mvmsta->tfd_queue_msk;
			if (FUNC8(mvm))
				FUNC11(mvm, mvmsta);
		}
	}

	FUNC15(&mvm->mutex);

	/* this can take a while, and we may need/want other operations
	 * to succeed while doing this, so do it without the mutex held
	 */
	if (!drop && !FUNC8(mvm))
		FUNC12(mvm->trans, msk);
}