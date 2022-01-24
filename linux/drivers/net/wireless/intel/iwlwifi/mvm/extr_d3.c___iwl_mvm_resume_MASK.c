#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_mvm {int /*<<< orphan*/  status; int /*<<< orphan*/  hw; int /*<<< orphan*/  mutex; struct ieee80211_vif* keep_vif; scalar_t__ net_detect; TYPE_2__* trans; int /*<<< orphan*/  fwrt; TYPE_1__* fw; } ;
struct ieee80211_vif {int dummy; } ;
typedef  enum iwl_d3_status { ____Placeholder_iwl_d3_status } iwl_d3_status ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_3__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  D0I3_END_CMD ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 scalar_t__ FUNC0 (struct ieee80211_vif*) ; 
 int IWL_D3_STATUS_ALIVE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  IWL_MVM_SCAN_NETDETECT ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_HW_RESTART_REQUESTED ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_D0I3_END_FIRST ; 
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  iwl_dump_desc_assert ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  iwl_mvm_d3_disconnect_iter ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*) ; 
 struct ieee80211_vif* FUNC10 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC13 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_mvm*,int,int) ; 
 int FUNC15 (struct iwl_mvm*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct iwl_mvm*) ; 
 int FUNC18 (TYPE_2__*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct iwl_mvm *mvm, bool test)
{
	struct ieee80211_vif *vif = NULL;
	int ret = 1;
	enum iwl_d3_status d3_status;
	bool keep = false;
	bool unified_image = FUNC3(&mvm->fw->ucode_capa,
					 IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG);
	bool d0i3_first = FUNC3(&mvm->fw->ucode_capa,
				      IWL_UCODE_TLV_CAPA_D0I3_END_FIRST);

	FUNC19(&mvm->mutex);

	/* get the BSS vif pointer again */
	vif = FUNC10(mvm);
	if (FUNC0(vif))
		goto err;

	FUNC6(&mvm->fwrt);

	if (FUNC7(mvm, vif)) {
		FUNC21(STATUS_FW_ERROR, &mvm->trans->status);
		FUNC8(mvm);
		FUNC5(&mvm->fwrt, &iwl_dump_desc_assert,
					false, 0);
		ret = 1;
		goto err;
	}

	ret = FUNC18(mvm->trans, &d3_status, test, !unified_image);
	if (ret)
		goto err;

	if (d3_status != IWL_D3_STATUS_ALIVE) {
		FUNC2(mvm, "Device was reset during suspend\n");
		goto err;
	}

	if (d0i3_first) {
		ret = FUNC16(mvm, D0I3_END_CMD, 0, 0, NULL);
		if (ret < 0) {
			FUNC1(mvm, "Failed to send D0I3_END_CMD first (%d)\n",
				ret);
			goto err;
		}
	}

	/*
	 * Query the current location and source from the D3 firmware so we
	 * can play it back when we re-intiailize the D0 firmware
	 */
	FUNC17(mvm);

	/* Re-configure PPAG settings */
	FUNC11(mvm);

	if (!unified_image)
		/*  Re-configure default SAR profile */
		FUNC14(mvm, 1, 1);

	if (mvm->net_detect) {
		/* If this is a non-unified image, we restart the FW,
		 * so no need to stop the netdetect scan.  If that
		 * fails, continue and try to get the wake-up reasons,
		 * but trigger a HW restart by keeping a failure code
		 * in ret.
		 */
		if (unified_image)
			ret = FUNC15(mvm, IWL_MVM_SCAN_NETDETECT,
						false);

		FUNC12(mvm, vif);
		/* has unlocked the mutex, so skip that */
		goto out;
	} else {
		keep = FUNC13(mvm, vif);
#ifdef CONFIG_IWLWIFI_DEBUGFS
		if (keep)
			mvm->keep_vif = vif;
#endif
		/* has unlocked the mutex, so skip that */
		goto out_iterate;
	}

err:
	FUNC9(mvm);
	FUNC20(&mvm->mutex);

out_iterate:
	if (!test)
		FUNC4(mvm->hw,
			IEEE80211_IFACE_ITER_NORMAL,
			iwl_mvm_d3_disconnect_iter, keep ? vif : NULL);

out:
	/* no need to reset the device in unified images, if successful */
	if (unified_image && !ret) {
		/* nothing else to do if we already sent D0I3_END_CMD */
		if (d0i3_first)
			return 0;

		ret = FUNC16(mvm, D0I3_END_CMD, 0, 0, NULL);
		if (!ret)
			return 0;
	}

	/*
	 * Reconfigure the device in one of the following cases:
	 * 1. We are not using a unified image
	 * 2. We are using a unified image but had an error while exiting D3
	 */
	FUNC21(IWL_MVM_STATUS_HW_RESTART_REQUESTED, &mvm->status);

	return 1;
}