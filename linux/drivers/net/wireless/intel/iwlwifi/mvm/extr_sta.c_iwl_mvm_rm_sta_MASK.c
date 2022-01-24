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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_vif {size_t ap_sta_id; } ;
struct iwl_mvm_sta {size_t sta_id; scalar_t__ reserved_queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  tfd_queue_msk; int /*<<< orphan*/  dup_data; } ;
struct TYPE_7__ {size_t sta_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  dwork; TYPE_3__ peer; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; TYPE_4__ tdls_cs; TYPE_1__* queue_info; int /*<<< orphan*/  trans; int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {scalar_t__ assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_2__ bss_conf; } ;
struct ieee80211_sta {int dummy; } ;
typedef  enum iwl_mvm_queue_status { ____Placeholder_iwl_mvm_queue_status } iwl_mvm_queue_status ;
struct TYPE_5__ {int status; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IEEE80211_INVAL_HW_QUEUE ; 
 void* IWL_MVM_INVALID_STA ; 
 int IWL_MVM_QUEUE_FREE ; 
 int IWL_MVM_QUEUE_RESERVED ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,char*,size_t,size_t,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int FUNC5 (struct iwl_mvm*,struct iwl_mvm_sta*,int) ; 
 int FUNC6 (struct iwl_mvm*,struct iwl_mvm_sta*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct iwl_mvm*) ; 
 scalar_t__ FUNC8 (struct iwl_mvm*) ; 
 int FUNC9 (struct iwl_mvm*,size_t) ; 
 struct iwl_mvm_sta* FUNC10 (struct ieee80211_sta*) ; 
 struct iwl_mvm_vif* FUNC11 (struct ieee80211_vif*) ; 
 int FUNC12 (struct iwl_mvm*,struct iwl_mvm_sta*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct iwl_mvm *mvm,
		   struct ieee80211_vif *vif,
		   struct ieee80211_sta *sta)
{
	struct iwl_mvm_vif *mvmvif = FUNC11(vif);
	struct iwl_mvm_sta *mvm_sta = FUNC10(sta);
	u8 sta_id = mvm_sta->sta_id;
	int ret;

	FUNC15(&mvm->mutex);

	if (FUNC7(mvm))
		FUNC14(mvm_sta->dup_data);

	ret = FUNC5(mvm, mvm_sta, true);
	if (ret)
		return ret;

	/* flush its queues here since we are freeing mvm_sta */
	ret = FUNC6(mvm, mvm_sta, false, 0);
	if (ret)
		return ret;
	if (FUNC8(mvm)) {
		ret = FUNC12(mvm, mvm_sta);
	} else {
		u32 q_mask = mvm_sta->tfd_queue_msk;

		ret = FUNC13(mvm->trans,
						     q_mask);
	}
	if (ret)
		return ret;

	ret = FUNC5(mvm, mvm_sta, false);

	FUNC4(mvm, vif, sta);

	/* If there is a TXQ still marked as reserved - free it */
	if (mvm_sta->reserved_queue != IEEE80211_INVAL_HW_QUEUE) {
		u8 reserved_txq = mvm_sta->reserved_queue;
		enum iwl_mvm_queue_status *status;

		/*
		 * If no traffic has gone through the reserved TXQ - it
		 * is still marked as IWL_MVM_QUEUE_RESERVED, and
		 * should be manually marked as free again
		 */
		status = &mvm->queue_info[reserved_txq].status;
		if (FUNC1((*status != IWL_MVM_QUEUE_RESERVED) &&
			 (*status != IWL_MVM_QUEUE_FREE),
			 "sta_id %d reserved txq %d status %d",
			 sta_id, reserved_txq, *status))
			return -EINVAL;

		*status = IWL_MVM_QUEUE_FREE;
	}

	if (vif->type == NL80211_IFTYPE_STATION &&
	    mvmvif->ap_sta_id == sta_id) {
		/* if associated - we can't remove the AP STA now */
		if (vif->bss_conf.assoc)
			return ret;

		/* unassoc - go ahead - remove the AP STA now */
		mvmvif->ap_sta_id = IWL_MVM_INVALID_STA;
	}

	/*
	 * This shouldn't happen - the TDLS channel switch should be canceled
	 * before the STA is removed.
	 */
	if (FUNC2(mvm->tdls_cs.peer.sta_id == sta_id)) {
		mvm->tdls_cs.peer.sta_id = IWL_MVM_INVALID_STA;
		FUNC3(&mvm->tdls_cs.dwork);
	}

	/*
	 * Make sure that the tx response code sees the station as -EBUSY and
	 * calls the drain worker.
	 */
	FUNC16(&mvm_sta->lock);
	FUNC17(&mvm_sta->lock);

	ret = FUNC9(mvm, mvm_sta->sta_id);
	FUNC0(mvm->fw_id_to_mac_id[mvm_sta->sta_id], NULL);

	return ret;
}