#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  cur_state; } ;
struct TYPE_22__ {int /*<<< orphan*/  sta_id; } ;
struct TYPE_23__ {TYPE_4__ peer; } ;
struct TYPE_20__ {int /*<<< orphan*/  conf; } ;
struct TYPE_18__ {TYPE_2__ dump; } ;
struct iwl_mvm {int /*<<< orphan*/  ext_clock_valid; int /*<<< orphan*/  dev; int /*<<< orphan*/  status; void* hb_scan_type; void* scan_type; TYPE_9__* fw; TYPE_8__ cooling_dev; int /*<<< orphan*/ * phy_ctxts; TYPE_7__* hw; int /*<<< orphan*/  last_quota_cmd; TYPE_5__ tdls_cs; int /*<<< orphan*/ * fw_id_to_mac_id; TYPE_11__* trans; int /*<<< orphan*/  phy_db; TYPE_13__ fwrt; int /*<<< orphan*/  mutex; } ;
struct ieee80211_supported_band {struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_19__ {scalar_t__ dest_tlv; } ;
struct TYPE_27__ {int /*<<< orphan*/  ucode_capa; TYPE_1__ dbg; } ;
struct TYPE_25__ {TYPE_6__* wiphy; } ;
struct TYPE_24__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_21__ {scalar_t__ device_family; } ;
struct TYPE_17__ {TYPE_3__* trans_cfg; } ;
struct TYPE_16__ {int /*<<< orphan*/  init_dbg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CTDP_CMD_OPERATION_START ; 
 int ERFKILL ; 
 int /*<<< orphan*/  ERROR_RECOVERY_UPDATE_DB ; 
 int /*<<< orphan*/  FW_DBG_INVALID ; 
 int /*<<< orphan*/  FW_DBG_START_FROM_ALIVE ; 
 int /*<<< orphan*/  FW_DBG_TRIGGER_DRIVER ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 scalar_t__ IWL_DEVICE_FAMILY_22000 ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  IWL_MVM_INVALID_STA ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_HW_CTKILL ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 void* IWL_SCAN_TYPE_NOT_SET ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_DQA_SUPPORT ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_SET_LTR_GEN2 ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_UMAC_SCAN ; 
 int /*<<< orphan*/  NL80211_CHAN_NO_HT ; 
 int NUM_NL80211_BANDS ; 
 int NUM_PHY_CTX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg80211_chan_def*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_13__*) ; 
 int FUNC13 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_mvm*) ; 
 int FUNC15 (struct iwl_mvm*) ; 
 int FUNC16 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct iwl_mvm*) ; 
 scalar_t__ FUNC18 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC19 (struct iwl_mvm*) ; 
 int FUNC20 (struct iwl_mvm*) ; 
 scalar_t__ FUNC21 (struct iwl_mvm*) ; 
 scalar_t__ FUNC22 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC23 (struct iwl_mvm*) ; 
 int FUNC24 (struct iwl_mvm*) ; 
 int FUNC25 (struct iwl_mvm*,int /*<<< orphan*/ *,struct cfg80211_chan_def*,int,int) ; 
 int FUNC26 (struct iwl_mvm*) ; 
 int FUNC27 (struct iwl_mvm*) ; 
 int FUNC28 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC29 (struct iwl_mvm*) ; 
 int FUNC30 (struct iwl_mvm*) ; 
 int FUNC31 (struct iwl_mvm*) ; 
 int FUNC32 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC33 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct iwl_mvm*) ; 
 int FUNC35 (struct iwl_mvm*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC36 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC37 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int FUNC38 (struct iwl_mvm*) ; 
 int FUNC39 (int /*<<< orphan*/ ) ; 
 int FUNC40 (struct iwl_mvm*) ; 
 int FUNC41 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_11__*) ; 
 int FUNC43 (TYPE_11__*) ; 
 TYPE_10__ iwlmvm_mod_params ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC46 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC47(struct iwl_mvm *mvm)
{
	int ret, i;
	struct ieee80211_channel *chan;
	struct cfg80211_chan_def chandef;
	struct ieee80211_supported_band *sband = NULL;

	FUNC44(&mvm->mutex);

	ret = FUNC43(mvm->trans);
	if (ret)
		return ret;

	ret = FUNC24(mvm);
	if (ret) {
		FUNC2(mvm, "Failed to start RT ucode: %d\n", ret);
		if (ret != -ERFKILL)
			FUNC10(&mvm->fwrt,
						 FW_DBG_TRIGGER_DRIVER);
		goto error;
	}

	FUNC12(&mvm->fwrt);

	ret = FUNC35(mvm, NULL, false);
	if (ret)
		FUNC2(mvm, "Failed to initialize Smart Fifo\n");

	if (!FUNC42(mvm->trans)) {
		mvm->fwrt.dump.conf = FW_DBG_INVALID;
		/* if we have a destination, assume EARLY START */
		if (mvm->fw->dbg.dest_tlv)
			mvm->fwrt.dump.conf = FW_DBG_START_FROM_ALIVE;
		FUNC11(&mvm->fwrt, FW_DBG_START_FROM_ALIVE);
	}

	ret = FUNC41(mvm, FUNC17(mvm));
	if (ret)
		goto error;

	if (!FUNC19(mvm)) {
		/* Send phy db control command and then phy db calibration */
		ret = FUNC39(mvm->phy_db);
		if (ret)
			goto error;

		ret = FUNC38(mvm);
		if (ret)
			goto error;
	}

	ret = FUNC31(mvm);
	if (ret)
		goto error;

	/* Init RSS configuration */
	if (mvm->trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22000) {
		ret = FUNC9(mvm);
		if (ret) {
			FUNC2(mvm, "Failed to configure RX queues: %d\n",
				ret);
			goto error;
		}
	}

	if (FUNC18(mvm)) {
		ret = FUNC40(mvm);
		if (ret) {
			FUNC2(mvm, "Failed to configure RSS queues: %d\n",
				ret);
			goto error;
		}
	}

	/* init the fw <-> mac80211 STA mapping */
	for (i = 0; i < FUNC0(mvm->fw_id_to_mac_id); i++)
		FUNC3(mvm->fw_id_to_mac_id[i], NULL);

	mvm->tdls_cs.peer.sta_id = IWL_MVM_INVALID_STA;

	/* reset quota debouncing buffer - 0xff will yield invalid data */
	FUNC45(&mvm->last_quota_cmd, 0xff, sizeof(mvm->last_quota_cmd));

	if (FUNC7(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_DQA_SUPPORT)) {
		ret = FUNC32(mvm);
		if (ret)
			goto error;
	}

	/* Add auxiliary station for scanning */
	ret = FUNC13(mvm);
	if (ret)
		goto error;

	/* Add all the PHY contexts */
	i = 0;
	while (!sband && i < NUM_NL80211_BANDS)
		sband = mvm->hw->wiphy->bands[i++];

	if (FUNC5(!sband))
		goto error;

	chan = &sband->channels[0];

	FUNC6(&chandef, chan, NL80211_CHAN_NO_HT);
	for (i = 0; i < NUM_PHY_CTX; i++) {
		/*
		 * The channel used here isn't relevant as it's
		 * going to be overwritten in the other flows.
		 * For now use the first channel we have.
		 */
		ret = FUNC25(mvm, &mvm->phy_ctxts[i],
					   &chandef, 1, 1);
		if (ret)
			goto error;
	}

	if (FUNC22(mvm)) {
		/* in order to give the responsibility of ct-kill and
		 * TX backoff to FW we need to send empty temperature reporting
		 * cmd during init time
		 */
		FUNC34(mvm);
	} else {
		/* Initialize tx backoffs to the minimal possible */
		FUNC37(mvm, 0);
	}

#ifdef CONFIG_THERMAL
	/* TODO: read the budget from BIOS / Platform NVM */

	/*
	 * In case there is no budget from BIOS / Platform NVM the default
	 * budget should be 2000mW (cooling state 0).
	 */
	if (iwl_mvm_is_ctdp_supported(mvm)) {
		ret = iwl_mvm_ctdp_command(mvm, CTDP_CMD_OPERATION_START,
					   mvm->cooling_dev.cur_state);
		if (ret)
			goto error;
	}
#endif

	if (!FUNC7(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_SET_LTR_GEN2))
		FUNC4(FUNC14(mvm));

	ret = FUNC26(mvm);
	if (ret)
		goto error;

	/*
	 * RTNL is not taken during Ct-kill, but we don't need to scan/Tx
	 * anyway, so don't init MCC.
	 */
	if (!FUNC46(IWL_MVM_STATUS_HW_CTKILL, &mvm->status)) {
		ret = FUNC20(mvm);
		if (ret)
			goto error;
	}

	if (FUNC7(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_UMAC_SCAN)) {
		mvm->scan_type = IWL_SCAN_TYPE_NOT_SET;
		mvm->hb_scan_type = IWL_SCAN_TYPE_NOT_SET;
		ret = FUNC15(mvm);
		if (ret)
			goto error;
	}

	if (FUNC46(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status))
		FUNC33(mvm, ERROR_RECOVERY_UPDATE_DB);

	if (FUNC8(mvm->dev, &mvm->ext_clock_valid))
		FUNC1(mvm, "ECKV table doesn't exist in BIOS\n");

	ret = FUNC27(mvm);
	if (ret)
		goto error;

	ret = FUNC30(mvm);
	if (ret == 0) {
		ret = FUNC28(mvm);
	} else if (ret > 0 && !FUNC29(mvm)) {
		/*
		 * If basic SAR is not available, we check for WGDS,
		 * which should *not* be available either.  If it is
		 * available, issue an error, because we can't use SAR
		 * Geo without basic SAR.
		 */
		FUNC2(mvm, "BIOS contains WGDS but no WRDS\n");
	}

	if (ret < 0)
		goto error;

	FUNC23(mvm);

	FUNC1(mvm, "RT uCode started.\n");
	return 0;
 error:
	if (!iwlmvm_mod_params.init_dbg || !ret)
		FUNC36(mvm);
	return ret;
}