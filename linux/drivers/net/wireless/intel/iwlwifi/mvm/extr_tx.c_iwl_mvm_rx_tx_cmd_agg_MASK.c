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
typedef  void* u16 ;
struct TYPE_3__ {int /*<<< orphan*/  sequence; } ;
struct iwl_rx_packet {TYPE_1__ hdr; scalar_t__ data; } ;
struct iwl_mvm_tx_resp {int /*<<< orphan*/  wireless_media_time; int /*<<< orphan*/  tlc_info; int /*<<< orphan*/  initial_rate; int /*<<< orphan*/  ra_tid; } ;
struct iwl_mvm_sta {TYPE_2__* tid_data; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct ieee80211_sta {int /*<<< orphan*/  wme; } ;
struct TYPE_4__ {int /*<<< orphan*/  lq_color; void* tx_time; int /*<<< orphan*/  rate_n_flags; } ;

/* Variables and functions */
 int IWL_MVM_DQA_BSS_CLIENT_QUEUE ; 
 int IWL_MVM_DQA_MIN_DATA_QUEUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct iwl_rx_packet*) ; 
 struct iwl_mvm_sta* FUNC6 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,struct iwl_mvm_sta*,void*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(struct iwl_mvm *mvm,
				  struct iwl_rx_packet *pkt)
{
	struct iwl_mvm_tx_resp *tx_resp = (void *)pkt->data;
	int sta_id = FUNC0(tx_resp->ra_tid);
	int tid = FUNC1(tx_resp->ra_tid);
	u16 sequence = FUNC8(pkt->hdr.sequence);
	struct iwl_mvm_sta *mvmsta;
	int queue = FUNC2(sequence);
	struct ieee80211_sta *sta;

	if (FUNC4(queue < IWL_MVM_DQA_MIN_DATA_QUEUE &&
			 (queue != IWL_MVM_DQA_BSS_CLIENT_QUEUE)))
		return;

	FUNC5(mvm, pkt);

	FUNC11();

	mvmsta = FUNC6(mvm, sta_id);

	sta = FUNC10(mvm->fw_id_to_mac_id[sta_id]);
	if (FUNC4(!sta || !sta->wme)) {
		FUNC12();
		return;
	}

	if (!FUNC4(!mvmsta)) {
		mvmsta->tid_data[tid].rate_n_flags =
			FUNC9(tx_resp->initial_rate);
		mvmsta->tid_data[tid].tx_time =
			FUNC8(tx_resp->wireless_media_time);
		mvmsta->tid_data[tid].lq_color =
			FUNC3(tx_resp->tlc_info);
		FUNC7(mvm, mvmsta,
				   FUNC8(tx_resp->wireless_media_time));
	}

	FUNC12();
}