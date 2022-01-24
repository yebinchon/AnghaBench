#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iwl_mvm {int lar_regdom_set; TYPE_4__* hw; int /*<<< orphan*/  dev; TYPE_3__* nvm_data; TYPE_2__* fw; TYPE_1__* cfg; } ;
struct ieee80211_regdomain {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_7__ {int lar_enabled; } ;
struct TYPE_6__ {int /*<<< orphan*/  ucode_capa; } ;
struct TYPE_5__ {scalar_t__ nvm_type; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ieee80211_regdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,char*,char*) ; 
 scalar_t__ IWL_NVM_EXT ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_LAR_SUPPORT ; 
 int /*<<< orphan*/  MCC_SOURCE_BIOS ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct ieee80211_regdomain* FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 struct ieee80211_regdomain* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*) ; 
 scalar_t__ FUNC8 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_regdomain*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct ieee80211_regdomain*) ; 

int FUNC11(struct iwl_mvm *mvm)
{
	bool tlv_lar;
	bool nvm_lar;
	int retval;
	struct ieee80211_regdomain *regd;
	char mcc[3];

	if (mvm->cfg->nvm_type == IWL_NVM_EXT) {
		tlv_lar = FUNC2(&mvm->fw->ucode_capa,
				      IWL_UCODE_TLV_CAPA_LAR_SUPPORT);
		nvm_lar = mvm->nvm_data->lar_enabled;
		if (tlv_lar != nvm_lar)
			FUNC1(mvm,
				 "Conflict between TLV & NVM regarding enabling LAR (TLV = %s NVM =%s)\n",
				 tlv_lar ? "enabled" : "disabled",
				 nvm_lar ? "enabled" : "disabled");
	}

	if (!FUNC7(mvm))
		return 0;

	/*
	 * try to replay the last set MCC to FW. If it doesn't exist,
	 * queue an update to cfg80211 to retrieve the default alpha2 from FW.
	 */
	retval = FUNC6(mvm);
	if (retval != -ENOENT)
		return retval;

	/*
	 * Driver regulatory hint for initial update, this also informs the
	 * firmware we support wifi location updates.
	 * Disallow scans that might crash the FW while the LAR regdomain
	 * is not set.
	 */
	mvm->lar_regdom_set = false;

	regd = FUNC4(mvm, NULL);
	if (FUNC0(regd))
		return -EIO;

	if (FUNC8(mvm) &&
	    !FUNC3(mvm->dev, mcc)) {
		FUNC9(regd);
		regd = FUNC5(mvm->hw->wiphy, mcc,
					     MCC_SOURCE_BIOS, NULL);
		if (FUNC0(regd))
			return -EIO;
	}

	retval = FUNC10(mvm->hw->wiphy, regd);
	FUNC9(regd);
	return retval;
}