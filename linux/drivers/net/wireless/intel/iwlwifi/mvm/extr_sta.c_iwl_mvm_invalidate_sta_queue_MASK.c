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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_sta {unsigned long tid_disable_agg; int /*<<< orphan*/  tfd_queue_msk; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  mac_id_n_color; } ;
struct iwl_mvm_add_sta_cmd {int /*<<< orphan*/  tid_disable_tx; void* tfd_queue_msk; int /*<<< orphan*/  modify_mask; int /*<<< orphan*/  add_modify; int /*<<< orphan*/  sta_id; void* mac_id_n_color; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; TYPE_1__* queue_info; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {size_t ra_sta_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_STA ; 
 int /*<<< orphan*/  ADD_STA_SUCCESS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  STA_MODE_MODIFY ; 
 int /*<<< orphan*/  STA_MODIFY_QUEUES ; 
 int /*<<< orphan*/  STA_MODIFY_QUEUE_REMOVAL ; 
 int /*<<< orphan*/  STA_MODIFY_TID_DISABLE_TX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 int FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_add_sta_cmd*,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_sta* FUNC8 (struct ieee80211_sta*) ; 
 struct ieee80211_sta* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct iwl_mvm *mvm, int queue,
					unsigned long disable_agg_tids,
					bool remove_queue)
{
	struct iwl_mvm_add_sta_cmd cmd = {};
	struct ieee80211_sta *sta;
	struct iwl_mvm_sta *mvmsta;
	u32 status;
	u8 sta_id;

	if (FUNC1(FUNC6(mvm)))
		return -EINVAL;

	sta_id = mvm->queue_info[queue].ra_sta_id;

	FUNC10();

	sta = FUNC9(mvm->fw_id_to_mac_id[sta_id]);

	if (FUNC2(FUNC0(sta))) {
		FUNC11();
		return -EINVAL;
	}

	mvmsta = FUNC8(sta);

	mvmsta->tid_disable_agg |= disable_agg_tids;

	cmd.mac_id_n_color = FUNC4(mvmsta->mac_id_n_color);
	cmd.sta_id = mvmsta->sta_id;
	cmd.add_modify = STA_MODE_MODIFY;
	cmd.modify_mask = STA_MODIFY_QUEUES;
	if (disable_agg_tids)
		cmd.modify_mask |= STA_MODIFY_TID_DISABLE_TX;
	if (remove_queue)
		cmd.modify_mask |= STA_MODIFY_QUEUE_REMOVAL;
	cmd.tfd_queue_msk = FUNC4(mvmsta->tfd_queue_msk);
	cmd.tid_disable_tx = FUNC3(mvmsta->tid_disable_agg);

	FUNC11();

	/* Notify FW of queue removal from the STA queues */
	status = ADD_STA_SUCCESS;
	return FUNC7(mvm, ADD_STA,
					   FUNC5(mvm),
					   &cmd, &status);
}