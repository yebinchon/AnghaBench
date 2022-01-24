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
struct napi_struct {int dummy; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_baid_data {unsigned int tid; unsigned int sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/ * baid_map; } ;
struct iwl_bar_frame_release {int /*<<< orphan*/  sta_tid; int /*<<< orphan*/  ba_info; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IWL_BAR_FRAME_RELEASE_BAID_MASK ; 
 int /*<<< orphan*/  IWL_BAR_FRAME_RELEASE_NSSN_MASK ; 
 int /*<<< orphan*/  IWL_BAR_FRAME_RELEASE_STA_MASK ; 
 int /*<<< orphan*/  IWL_BAR_FRAME_RELEASE_TID_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,unsigned int) ; 
 unsigned int IWL_RX_REORDER_DATA_INVALID_BAID ; 
 scalar_t__ FUNC2 (int,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct napi_struct*,unsigned int,unsigned int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_baid_data* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct iwl_rx_packet* FUNC9 (struct iwl_rx_cmd_buffer*) ; 

void FUNC10(struct iwl_mvm *mvm, struct napi_struct *napi,
				  struct iwl_rx_cmd_buffer *rxb, int queue)
{
	struct iwl_rx_packet *pkt = FUNC9(rxb);
	struct iwl_bar_frame_release *release = (void *)pkt->data;
	unsigned int baid = FUNC5(release->ba_info,
					  IWL_BAR_FRAME_RELEASE_BAID_MASK);
	unsigned int nssn = FUNC5(release->ba_info,
					  IWL_BAR_FRAME_RELEASE_NSSN_MASK);
	unsigned int sta_id = FUNC5(release->sta_tid,
					    IWL_BAR_FRAME_RELEASE_STA_MASK);
	unsigned int tid = FUNC5(release->sta_tid,
					 IWL_BAR_FRAME_RELEASE_TID_MASK);
	struct iwl_mvm_baid_data *baid_data;

	if (FUNC3(baid == IWL_RX_REORDER_DATA_INVALID_BAID ||
			 baid >= FUNC0(mvm->baid_map)))
		return;

	FUNC7();
	baid_data = FUNC6(mvm->baid_map[baid]);
	if (!baid_data) {
		FUNC1(mvm,
			     "Got valid BAID %d but not allocated, invalid BAR release!\n",
			      baid);
		goto out;
	}

	if (FUNC2(tid != baid_data->tid || sta_id != baid_data->sta_id,
		 "baid 0x%x is mapped to sta:%d tid:%d, but BAR release received for sta:%d tid:%d\n",
		 baid, baid_data->sta_id, baid_data->tid, sta_id,
		 tid))
		goto out;

	FUNC4(mvm, napi, baid, nssn, queue, 0);
out:
	FUNC8();
}