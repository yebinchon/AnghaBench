#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  size_t u16 ;
struct timer_list {int dummy; } ;
struct iwl_mvm_sta {int /*<<< orphan*/  vif; } ;
struct iwl_mvm_reorder_buffer {size_t queue; int buf_size; int head_sn; int /*<<< orphan*/  lock; int /*<<< orphan*/  reorder_timer; TYPE_2__* mvm; scalar_t__ removed; int /*<<< orphan*/  num_stored; } ;
struct TYPE_5__ {scalar_t__ reorder_time; int /*<<< orphan*/  frames; } ;
struct iwl_mvm_reorder_buf_entry {TYPE_1__ e; } ;
struct iwl_mvm_baid_data {size_t entries_per_queue; size_t sta_id; int /*<<< orphan*/  tid; struct iwl_mvm_reorder_buf_entry* entries; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * fw_id_to_mac_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  IWL_MVM_RELEASE_SEND_RSS_SYNC ; 
 scalar_t__ RX_REORDER_BUF_TIMEOUT_MQ ; 
 struct iwl_mvm_reorder_buffer* buf ; 
 struct iwl_mvm_reorder_buffer* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int,int) ; 
 struct iwl_mvm_baid_data* FUNC3 (struct iwl_mvm_reorder_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct ieee80211_sta*,int /*<<< orphan*/ *,struct iwl_mvm_baid_data*,struct iwl_mvm_reorder_buffer*,size_t,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_sta* FUNC6 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct ieee80211_sta* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  reorder_timer ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC15(struct timer_list *t)
{
	struct iwl_mvm_reorder_buffer *buf = FUNC1(buf, t, reorder_timer);
	struct iwl_mvm_baid_data *baid_data =
		FUNC3(buf);
	struct iwl_mvm_reorder_buf_entry *entries =
		&baid_data->entries[buf->queue * baid_data->entries_per_queue];
	int i;
	u16 sn = 0, index = 0;
	bool expired = false;
	bool cont = false;

	FUNC12(&buf->lock);

	if (!buf->num_stored || buf->removed) {
		FUNC13(&buf->lock);
		return;
	}

	for (i = 0; i < buf->buf_size ; i++) {
		index = (buf->head_sn + i) % buf->buf_size;

		if (FUNC11(&entries[index].e.frames)) {
			/*
			 * If there is a hole and the next frame didn't expire
			 * we want to break and not advance SN
			 */
			cont = false;
			continue;
		}
		if (!cont &&
		    !FUNC14(jiffies, entries[index].e.reorder_time +
					 RX_REORDER_BUF_TIMEOUT_MQ))
			break;

		expired = true;
		/* continue until next hole after this expired frames */
		cont = true;
		sn = FUNC2(buf->head_sn, i + 1);
	}

	if (expired) {
		struct ieee80211_sta *sta;
		struct iwl_mvm_sta *mvmsta;
		u8 sta_id = baid_data->sta_id;

		FUNC9();
		sta = FUNC8(buf->mvm->fw_id_to_mac_id[sta_id]);
		mvmsta = FUNC6(sta);

		/* SN is set to the last expired frame + 1 */
		FUNC0(buf->mvm,
			     "Releasing expired frames for sta %u, sn %d\n",
			     sta_id, sn);
		FUNC4(buf->mvm, mvmsta->vif,
						     sta, baid_data->tid);
		FUNC5(buf->mvm, sta, NULL, baid_data,
				       buf, sn, IWL_MVM_RELEASE_SEND_RSS_SYNC);
		FUNC10();
	} else {
		/*
		 * If no frame expired and there are stored frames, index is now
		 * pointing to the first unexpired frame - modify timer
		 * accordingly to this frame.
		 */
		FUNC7(&buf->reorder_timer,
			  entries[index].e.reorder_time +
			  1 + RX_REORDER_BUF_TIMEOUT_MQ);
	}
	FUNC13(&buf->lock);
}