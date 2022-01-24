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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_probe_resp_data_notif {int csa_counter; int /*<<< orphan*/  noa_active; int /*<<< orphan*/  mac_id; } ;
struct TYPE_4__ {int len_low; } ;
struct TYPE_6__ {TYPE_1__ noa_attr; } ;
struct iwl_probe_resp_data {int noa_len; TYPE_3__ notif; } ;
struct iwl_mvm_vif {int /*<<< orphan*/  probe_resp_data; TYPE_2__* mvm; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_vendor_ie {int dummy; } ;
struct ieee80211_p2p_noa_desc {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,int) ; 
 int IWL_PROBE_RESP_DATA_NO_CSA ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_vif*,int) ; 
 struct ieee80211_vif* FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ,int) ; 
 struct iwl_mvm_vif* FUNC4 (struct ieee80211_vif*) ; 
 int FUNC5 (struct iwl_rx_packet*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_probe_resp_data*,int /*<<< orphan*/ ) ; 
 struct iwl_probe_resp_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct iwl_probe_resp_data_notif*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct iwl_probe_resp_data*) ; 
 struct iwl_probe_resp_data* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 struct iwl_rx_packet* FUNC13 (struct iwl_rx_cmd_buffer*) ; 

void FUNC14(struct iwl_mvm *mvm,
				   struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC13(rxb);
	struct iwl_probe_resp_data_notif *notif = (void *)pkt->data;
	struct iwl_probe_resp_data *old_data, *new_data;
	int len = FUNC5(pkt);
	u32 id = FUNC8(notif->mac_id);
	struct ieee80211_vif *vif;
	struct iwl_mvm_vif *mvmvif;

	if (FUNC1(len < sizeof(*notif)))
		return;

	FUNC0(mvm, "Probe response data notif: noa %d, csa %d\n",
		       notif->noa_active, notif->csa_counter);

	vif = FUNC3(mvm, id, false);
	if (!vif)
		return;

	mvmvif = FUNC4(vif);

	new_data = FUNC7(sizeof(*new_data), GFP_KERNEL);
	if (!new_data)
		return;

	FUNC10(&new_data->notif, notif, sizeof(new_data->notif));

	/* noa_attr contains 1 reserved byte, need to substruct it */
	new_data->noa_len = sizeof(struct ieee80211_vendor_ie) +
			    sizeof(new_data->notif.noa_attr) - 1;

	/*
	 * If it's a one time NoA, only one descriptor is needed,
	 * adjust the length according to len_low.
	 */
	if (new_data->notif.noa_attr.len_low ==
	    sizeof(struct ieee80211_p2p_noa_desc) + 2)
		new_data->noa_len -= sizeof(struct ieee80211_p2p_noa_desc);

	old_data = FUNC12(mvmvif->probe_resp_data,
					FUNC9(&mvmvif->mvm->mutex));
	FUNC11(mvmvif->probe_resp_data, new_data);

	if (old_data)
		FUNC6(old_data, rcu_head);

	if (notif->csa_counter != IWL_PROBE_RESP_DATA_NO_CSA &&
	    notif->csa_counter >= 1)
		FUNC2(vif, notif->csa_counter);
}