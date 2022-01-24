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
struct iwl_mvm_vif {struct iwl_mvm_phy_ctxt* phy_ctxt; } ;
struct iwl_mvm_phy_ctxt {scalar_t__ ref; struct ieee80211_channel* channel; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; struct iwl_mvm_phy_ctxt* phy_ctxts; TYPE_1__* fw; int /*<<< orphan*/  roc_done_wk; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_channel {int /*<<< orphan*/  hw_value; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,...) ; 
 struct iwl_mvm* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_HOTSPOT_SUPPORT ; 
 int /*<<< orphan*/  NL80211_CHAN_NO_HT ; 
#define  NL80211_IFTYPE_P2P_DEVICE 129 
#define  NL80211_IFTYPE_STATION 128 
 int NUM_PHY_CTX ; 
 scalar_t__ FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_chan_def*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC8 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_phy_ctxt* FUNC9 (struct iwl_mvm*) ; 
 int FUNC10 (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*,struct cfg80211_chan_def*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*) ; 
 int FUNC13 (struct iwl_mvm*,struct ieee80211_channel*,struct ieee80211_vif*,int) ; 
 int FUNC14 (struct iwl_mvm*,struct ieee80211_vif*,int,int) ; 
 struct iwl_mvm_vif* FUNC15 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct ieee80211_hw *hw,
		       struct ieee80211_vif *vif,
		       struct ieee80211_channel *channel,
		       int duration,
		       enum ieee80211_roc_type type)
{
	struct iwl_mvm *mvm = FUNC2(hw);
	struct iwl_mvm_vif *mvmvif = FUNC15(vif);
	struct cfg80211_chan_def chandef;
	struct iwl_mvm_phy_ctxt *phy_ctxt;
	int ret, i;

	FUNC0(mvm, "enter (%d, %d, %d)\n", channel->hw_value,
			   duration, type);

	/*
	 * Flush the done work, just in case it's still pending, so that
	 * the work it does can complete and we can accept new frames.
	 */
	FUNC5(&mvm->roc_done_wk);

	FUNC16(&mvm->mutex);

	switch (vif->type) {
	case NL80211_IFTYPE_STATION:
		if (FUNC6(&mvm->fw->ucode_capa,
				IWL_UCODE_TLV_CAPA_HOTSPOT_SUPPORT)) {
			/* Use aux roc framework (HS20) */
			ret = FUNC13(mvm, channel,
						       vif, duration);
			goto out_unlock;
		}
		FUNC1(mvm, "hotspot not supported\n");
		ret = -EINVAL;
		goto out_unlock;
	case NL80211_IFTYPE_P2P_DEVICE:
		/* handle below */
		break;
	default:
		FUNC1(mvm, "vif isn't P2P_DEVICE: %d\n", vif->type);
		ret = -EINVAL;
		goto out_unlock;
	}

	for (i = 0; i < NUM_PHY_CTX; i++) {
		phy_ctxt = &mvm->phy_ctxts[i];
		if (phy_ctxt->ref == 0 || mvmvif->phy_ctxt == phy_ctxt)
			continue;

		if (phy_ctxt->ref && channel == phy_ctxt->channel) {
			/*
			 * Unbind the P2P_DEVICE from the current PHY context,
			 * and if the PHY context is not used remove it.
			 */
			ret = FUNC8(mvm, vif);
			if (FUNC3(ret, "Failed unbinding P2P_DEVICE\n"))
				goto out_unlock;

			FUNC12(mvm, mvmvif->phy_ctxt);

			/* Bind the P2P_DEVICE to the current PHY Context */
			mvmvif->phy_ctxt = phy_ctxt;

			ret = FUNC7(mvm, vif);
			if (FUNC3(ret, "Failed binding P2P_DEVICE\n"))
				goto out_unlock;

			FUNC11(mvm, mvmvif->phy_ctxt);
			goto schedule_time_event;
		}
	}

	/* Need to update the PHY context only if the ROC channel changed */
	if (channel == mvmvif->phy_ctxt->channel)
		goto schedule_time_event;

	FUNC4(&chandef, channel, NL80211_CHAN_NO_HT);

	/*
	 * Change the PHY context configuration as it is currently referenced
	 * only by the P2P Device MAC
	 */
	if (mvmvif->phy_ctxt->ref == 1) {
		ret = FUNC10(mvm, mvmvif->phy_ctxt,
					       &chandef, 1, 1);
		if (ret)
			goto out_unlock;
	} else {
		/*
		 * The PHY context is shared with other MACs. Need to remove the
		 * P2P Device from the binding, allocate an new PHY context and
		 * create a new binding
		 */
		phy_ctxt = FUNC9(mvm);
		if (!phy_ctxt) {
			ret = -ENOSPC;
			goto out_unlock;
		}

		ret = FUNC10(mvm, phy_ctxt, &chandef,
					       1, 1);
		if (ret) {
			FUNC1(mvm, "Failed to change PHY context\n");
			goto out_unlock;
		}

		/* Unbind the P2P_DEVICE from the current PHY context */
		ret = FUNC8(mvm, vif);
		if (FUNC3(ret, "Failed unbinding P2P_DEVICE\n"))
			goto out_unlock;

		FUNC12(mvm, mvmvif->phy_ctxt);

		/* Bind the P2P_DEVICE to the new allocated PHY context */
		mvmvif->phy_ctxt = phy_ctxt;

		ret = FUNC7(mvm, vif);
		if (FUNC3(ret, "Failed binding P2P_DEVICE\n"))
			goto out_unlock;

		FUNC11(mvm, mvmvif->phy_ctxt);
	}

schedule_time_event:
	/* Schedule the time events */
	ret = FUNC14(mvm, vif, duration, type);

out_unlock:
	FUNC17(&mvm->mutex);
	FUNC0(mvm, "leave\n");
	return ret;
}