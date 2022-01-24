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
struct iwl_nonqos_seq_query_cmd {int /*<<< orphan*/  value; int /*<<< orphan*/  mac_id_n_color; int /*<<< orphan*/  get_set_flag; } ;
struct iwl_mvm_vif {int seqno_valid; int /*<<< orphan*/  seqno; int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
typedef  int /*<<< orphan*/  query_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  IWL_NONQOS_SEQ_SET ; 
 int /*<<< orphan*/  NON_QOS_TX_COUNTER_CMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_nonqos_seq_query_cmd*) ; 
 struct iwl_mvm_vif* FUNC5 (struct ieee80211_vif*) ; 

void FUNC6(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC5(vif);
	struct iwl_nonqos_seq_query_cmd query_cmd = {
		.get_set_flag = FUNC3(IWL_NONQOS_SEQ_SET),
		.mac_id_n_color =
			FUNC3(FUNC0(mvmvif->id,
							mvmvif->color)),
		.value = FUNC2(mvmvif->seqno),
	};

	/* return if called during restart, not resume from D3 */
	if (!mvmvif->seqno_valid)
		return;

	mvmvif->seqno_valid = false;

	if (FUNC4(mvm, NON_QOS_TX_COUNTER_CMD, 0,
				 sizeof(query_cmd), &query_cmd))
		FUNC1(mvm, "failed to set non-QoS seqno\n");
}