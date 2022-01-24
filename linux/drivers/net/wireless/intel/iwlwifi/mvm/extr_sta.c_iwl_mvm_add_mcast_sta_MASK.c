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
typedef  int u8 ;
struct iwl_trans_txq_scd_cfg {int aggregate; int /*<<< orphan*/  frame_limit; int /*<<< orphan*/  tid; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  fifo; } ;
struct iwl_mvm_int_sta {int /*<<< orphan*/  sta_id; int /*<<< orphan*/  tfd_queue_msk; } ;
struct iwl_mvm_vif {int cab_queue; int /*<<< orphan*/  color; int /*<<< orphan*/  id; struct iwl_mvm_int_sta mcast_sta; } ;
struct iwl_mvm {TYPE_1__* fw; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  IWL_FRAME_LIMIT ; 
 int IWL_MVM_DQA_GCAST_QUEUE ; 
 int /*<<< orphan*/  IWL_MVM_TX_FIFO_BE ; 
 int /*<<< orphan*/  IWL_MVM_TX_FIFO_MCAST ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_API_STA_TYPE ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*,struct iwl_mvm_int_sta*,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct iwl_mvm_int_sta*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct iwl_trans_txq_scd_cfg*,unsigned int) ; 
 unsigned int FUNC6 (struct iwl_mvm*,struct ieee80211_vif*,int,int) ; 
 scalar_t__ FUNC7 (struct iwl_mvm*) ; 
 int FUNC8 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct iwl_mvm_vif* FUNC9 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC9(vif);
	struct iwl_mvm_int_sta *msta = &mvmvif->mcast_sta;
	static const u8 _maddr[] = {0x03, 0x00, 0x00, 0x00, 0x00, 0x00};
	const u8 *maddr = _maddr;
	struct iwl_trans_txq_scd_cfg cfg = {
		.fifo = vif->type == NL80211_IFTYPE_AP ?
			IWL_MVM_TX_FIFO_MCAST : IWL_MVM_TX_FIFO_BE,
		.sta_id = msta->sta_id,
		.tid = 0,
		.aggregate = false,
		.frame_limit = IWL_FRAME_LIMIT,
	};
	unsigned int timeout = FUNC6(mvm, vif, false, false);
	int ret;

	FUNC10(&mvm->mutex);

	if (FUNC1(vif->type != NL80211_IFTYPE_AP &&
		    vif->type != NL80211_IFTYPE_ADHOC))
		return -ENOTSUPP;

	/*
	 * In IBSS, ieee80211_check_queues() sets the cab_queue to be
	 * invalid, so make sure we use the queue we want.
	 * Note that this is done here as we want to avoid making DQA
	 * changes in mac80211 layer.
	 */
	if (vif->type == NL80211_IFTYPE_ADHOC)
		mvmvif->cab_queue = IWL_MVM_DQA_GCAST_QUEUE;

	/*
	 * While in previous FWs we had to exclude cab queue from TFD queue
	 * mask, now it is needed as any other queue.
	 */
	if (!FUNC7(mvm) &&
	    FUNC2(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE)) {
		FUNC5(mvm, NULL, mvmvif->cab_queue, 0, &cfg,
				   timeout);
		msta->tfd_queue_msk |= FUNC0(mvmvif->cab_queue);
	}
	ret = FUNC3(mvm, msta, maddr,
					 mvmvif->id, mvmvif->color);
	if (ret)
		goto err;

	/*
	 * Enable cab queue after the ADD_STA command is sent.
	 * This is needed for 22000 firmware which won't accept SCD_QUEUE_CFG
	 * command with unknown station id, and for FW that doesn't support
	 * station API since the cab queue is not included in the
	 * tfd_queue_mask.
	 */
	if (FUNC7(mvm)) {
		int queue = FUNC8(mvm, msta->sta_id,
						    0,
						    timeout);
		if (queue < 0) {
			ret = queue;
			goto err;
		}
		mvmvif->cab_queue = queue;
	} else if (!FUNC2(&mvm->fw->ucode_capa,
			       IWL_UCODE_TLV_API_STA_TYPE))
		FUNC5(mvm, NULL, mvmvif->cab_queue, 0, &cfg,
				   timeout);

	return 0;
err:
	FUNC4(mvm, msta);
	return ret;
}