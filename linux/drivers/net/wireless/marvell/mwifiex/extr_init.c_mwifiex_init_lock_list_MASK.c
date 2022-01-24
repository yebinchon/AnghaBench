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
struct TYPE_6__ {TYPE_2__* tid_tbl_ptr; int /*<<< orphan*/  ra_list_spinlock; } ;
struct mwifiex_private {int /*<<< orphan*/  ack_status_frames; int /*<<< orphan*/  ack_status_lock; int /*<<< orphan*/  rx_reorder_tbl_lock; int /*<<< orphan*/  tx_ba_stream_tbl_lock; int /*<<< orphan*/  bypass_txq; int /*<<< orphan*/  tdls_txq; int /*<<< orphan*/  auto_tdls_list; int /*<<< orphan*/  sta_list; int /*<<< orphan*/  rx_reorder_tbl_ptr; int /*<<< orphan*/  tx_ba_stream_tbl_ptr; TYPE_3__ wmm; int /*<<< orphan*/  auto_tdls_lock; int /*<<< orphan*/  sta_list_spinlock; int /*<<< orphan*/  curr_bcn_buf_lock; } ;
struct mwifiex_adapter {size_t priv_num; struct mwifiex_private** priv; TYPE_1__* bss_prio_tbl; int /*<<< orphan*/  tx_data_q; int /*<<< orphan*/  rx_data_q; int /*<<< orphan*/  rx_proc_lock; int /*<<< orphan*/  scan_pending_q_lock; int /*<<< orphan*/  cmd_pending_q_lock; int /*<<< orphan*/  cmd_free_q_lock; int /*<<< orphan*/  scan_pending_q; int /*<<< orphan*/  cmd_pending_q; int /*<<< orphan*/  cmd_free_q; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  mwifiex_cmd_lock; int /*<<< orphan*/  main_proc_lock; int /*<<< orphan*/  int_lock; } ;
typedef  size_t s32 ;
struct TYPE_5__ {int /*<<< orphan*/  ra_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  bss_prio_lock; int /*<<< orphan*/  bss_prio_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t MAX_NUM_TID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mwifiex_adapter *adapter)
{
	struct mwifiex_private *priv;
	s32 i, j;

	FUNC3(&adapter->int_lock);
	FUNC3(&adapter->main_proc_lock);
	FUNC3(&adapter->mwifiex_cmd_lock);
	FUNC3(&adapter->queue_lock);
	for (i = 0; i < adapter->priv_num; i++) {
		if (adapter->priv[i]) {
			priv = adapter->priv[i];
			FUNC3(&priv->wmm.ra_list_spinlock);
			FUNC3(&priv->curr_bcn_buf_lock);
			FUNC3(&priv->sta_list_spinlock);
			FUNC3(&priv->auto_tdls_lock);
		}
	}

	/* Initialize cmd_free_q */
	FUNC0(&adapter->cmd_free_q);
	/* Initialize cmd_pending_q */
	FUNC0(&adapter->cmd_pending_q);
	/* Initialize scan_pending_q */
	FUNC0(&adapter->scan_pending_q);

	FUNC3(&adapter->cmd_free_q_lock);
	FUNC3(&adapter->cmd_pending_q_lock);
	FUNC3(&adapter->scan_pending_q_lock);
	FUNC3(&adapter->rx_proc_lock);

	FUNC2(&adapter->rx_data_q);
	FUNC2(&adapter->tx_data_q);

	for (i = 0; i < adapter->priv_num; ++i) {
		FUNC0(&adapter->bss_prio_tbl[i].bss_prio_head);
		FUNC3(&adapter->bss_prio_tbl[i].bss_prio_lock);
	}

	for (i = 0; i < adapter->priv_num; i++) {
		if (!adapter->priv[i])
			continue;
		priv = adapter->priv[i];
		for (j = 0; j < MAX_NUM_TID; ++j)
			FUNC0(&priv->wmm.tid_tbl_ptr[j].ra_list);
		FUNC0(&priv->tx_ba_stream_tbl_ptr);
		FUNC0(&priv->rx_reorder_tbl_ptr);
		FUNC0(&priv->sta_list);
		FUNC0(&priv->auto_tdls_list);
		FUNC2(&priv->tdls_txq);
		FUNC2(&priv->bypass_txq);

		FUNC3(&priv->tx_ba_stream_tbl_lock);
		FUNC3(&priv->rx_reorder_tbl_lock);

		FUNC3(&priv->ack_status_lock);
		FUNC1(&priv->ack_status_frames);
	}

	return 0;
}