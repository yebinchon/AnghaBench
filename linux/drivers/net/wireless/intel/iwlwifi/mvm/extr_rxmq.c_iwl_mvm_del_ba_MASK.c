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
struct iwl_mvm_reorder_buffer {int /*<<< orphan*/  reorder_timer; int /*<<< orphan*/  lock; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  head_sn; } ;
struct iwl_mvm_delba_data {size_t baid; } ;
struct iwl_mvm_baid_data {size_t sta_id; struct iwl_mvm_reorder_buffer* reorder_buf; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/ * baid_map; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_sta*) ; 
 size_t IWL_MAX_BAID ; 
 scalar_t__ FUNC1 (int,char*,size_t) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_sta*,int /*<<< orphan*/ *,struct iwl_mvm_baid_data*,struct iwl_mvm_reorder_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct iwl_mvm *mvm, int queue,
			   struct iwl_mvm_delba_data *data)
{
	struct iwl_mvm_baid_data *ba_data;
	struct ieee80211_sta *sta;
	struct iwl_mvm_reorder_buffer *reorder_buf;
	u8 baid = data->baid;

	if (FUNC1(baid >= IWL_MAX_BAID, "invalid BAID: %x\n", baid))
		return;

	FUNC7();

	ba_data = FUNC6(mvm->baid_map[baid]);
	if (FUNC2(!ba_data))
		goto out;

	sta = FUNC6(mvm->fw_id_to_mac_id[ba_data->sta_id]);
	if (FUNC2(FUNC0(sta)))
		goto out;

	reorder_buf = &ba_data->reorder_buf[queue];

	/* release all frames that are in the reorder buffer to the stack */
	FUNC9(&reorder_buf->lock);
	FUNC5(mvm, sta, NULL, ba_data, reorder_buf,
			       FUNC4(reorder_buf->head_sn,
						reorder_buf->buf_size),
			       0);
	FUNC10(&reorder_buf->lock);
	FUNC3(&reorder_buf->reorder_timer);

out:
	FUNC8();
}