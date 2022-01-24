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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct napi_struct {int dummy; } ;
struct iwl_mvm_reorder_buffer {int /*<<< orphan*/  lock; } ;
struct iwl_mvm_baid_data {size_t sta_id; struct iwl_mvm_reorder_buffer* reorder_buf; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/ * baid_map; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,size_t,int /*<<< orphan*/ ) ; 
 size_t IWL_RX_REORDER_DATA_INVALID_BAID ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct ieee80211_sta*,struct napi_struct*,struct iwl_mvm_baid_data*,struct iwl_mvm_reorder_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct iwl_mvm *mvm,
					      struct napi_struct *napi,
					      u8 baid, u16 nssn, int queue,
					      u32 flags)
{
	struct ieee80211_sta *sta;
	struct iwl_mvm_reorder_buffer *reorder_buf;
	struct iwl_mvm_baid_data *ba_data;

	FUNC2(mvm, "Frame release notification for BAID %u, NSSN %d\n",
		     baid, nssn);

	if (FUNC3(baid == IWL_RX_REORDER_DATA_INVALID_BAID ||
			 baid >= FUNC0(mvm->baid_map)))
		return;

	FUNC6();

	ba_data = FUNC5(mvm->baid_map[baid]);
	if (FUNC3(!ba_data))
		goto out;

	sta = FUNC5(mvm->fw_id_to_mac_id[ba_data->sta_id]);
	if (FUNC3(FUNC1(sta)))
		goto out;

	reorder_buf = &ba_data->reorder_buf[queue];

	FUNC8(&reorder_buf->lock);
	FUNC4(mvm, sta, napi, ba_data,
			       reorder_buf, nssn, flags);
	FUNC9(&reorder_buf->lock);

out:
	FUNC7();
}