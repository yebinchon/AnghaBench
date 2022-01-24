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
typedef  int u32 ;
typedef  int u16 ;
struct iwl_nonqos_seq_query_cmd {int /*<<< orphan*/  mac_id_n_color; int /*<<< orphan*/  get_set_flag; } ;
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_host_cmd {int* len; TYPE_1__* resp_pkt; struct iwl_nonqos_seq_query_cmd** data; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;
struct ieee80211_vif {int dummy; } ;
typedef  int /*<<< orphan*/  query_cmd ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_WANT_SKB ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWL_NONQOS_SEQ_GET ; 
 int /*<<< orphan*/  NON_QOS_TX_COUNTER_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_host_cmd*) ; 
 int FUNC3 (struct iwl_mvm*,struct iwl_host_cmd*) ; 
 struct iwl_mvm_vif* FUNC4 (struct ieee80211_vif*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iwl_mvm *mvm,
				       struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC4(vif);
	struct iwl_nonqos_seq_query_cmd query_cmd = {
		.get_set_flag = FUNC1(IWL_NONQOS_SEQ_GET),
		.mac_id_n_color =
			FUNC1(FUNC0(mvmvif->id,
							mvmvif->color)),
	};
	struct iwl_host_cmd cmd = {
		.id = NON_QOS_TX_COUNTER_CMD,
		.flags = CMD_WANT_SKB,
	};
	int err;
	u32 size;

	cmd.data[0] = &query_cmd;
	cmd.len[0] = sizeof(query_cmd);

	err = FUNC3(mvm, &cmd);
	if (err)
		return err;

	size = FUNC5(cmd.resp_pkt);
	if (size < sizeof(__le16)) {
		err = -EINVAL;
	} else {
		err = FUNC6((__le16 *)cmd.resp_pkt->data);
		/* firmware returns next, not last-used seqno */
		err = (u16) (err - 0x10);
	}

	FUNC2(&cmd);
	return err;
}