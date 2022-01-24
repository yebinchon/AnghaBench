#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t sta_id; int /*<<< orphan*/ * skb; } ;
struct TYPE_6__ {size_t cur_sta_id; scalar_t__ state; int /*<<< orphan*/  dwork; TYPE_1__ peer; } ;
struct iwl_mvm {TYPE_3__ tdls_cs; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct TYPE_5__ {int dtim_period; int beacon_int; } ;
struct ieee80211_vif {TYPE_2__ bss_conf; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm* FUNC1 (struct ieee80211_hw*) ; 
 size_t IWL_MVM_INVALID_STA ; 
 scalar_t__ IWL_MVM_TDLS_SW_IDLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct ieee80211_hw *hw,
					struct ieee80211_vif *vif,
					struct ieee80211_sta *sta)
{
	struct iwl_mvm *mvm = FUNC1(hw);
	struct ieee80211_sta *cur_sta;
	bool wait_for_phy = false;

	FUNC7(&mvm->mutex);

	FUNC0(mvm, "TDLS cancel channel switch with %pM\n", sta->addr);

	/* we only support a single peer for channel switching */
	if (mvm->tdls_cs.peer.sta_id == IWL_MVM_INVALID_STA) {
		FUNC0(mvm, "No ch switch peer - %pM\n", sta->addr);
		goto out;
	}

	cur_sta = FUNC9(
				mvm->fw_id_to_mac_id[mvm->tdls_cs.peer.sta_id],
				FUNC5(&mvm->mutex));
	/* make sure it's the same peer */
	if (cur_sta != sta)
		goto out;

	/*
	 * If we're currently in a switch because of the now canceled peer,
	 * wait a DTIM here to make sure the phy is back on the base channel.
	 * We can't otherwise force it.
	 */
	if (mvm->tdls_cs.cur_sta_id == mvm->tdls_cs.peer.sta_id &&
	    mvm->tdls_cs.state != IWL_MVM_TDLS_SW_IDLE)
		wait_for_phy = true;

	mvm->tdls_cs.peer.sta_id = IWL_MVM_INVALID_STA;
	FUNC3(mvm->tdls_cs.peer.skb);
	mvm->tdls_cs.peer.skb = NULL;

out:
	FUNC8(&mvm->mutex);

	/* make sure the phy is on the base channel */
	if (wait_for_phy)
		FUNC6(FUNC2(vif->bss_conf.dtim_period *
				vif->bss_conf.beacon_int));

	/* flush the channel switch state */
	FUNC4(&mvm->tdls_cs.dwork);

	FUNC0(mvm, "TDLS ending channel switch with %pM\n", sta->addr);
}