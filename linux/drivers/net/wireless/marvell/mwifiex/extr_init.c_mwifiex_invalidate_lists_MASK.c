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
struct TYPE_6__ {TYPE_2__* tid_tbl_ptr; } ;
struct mwifiex_private {int /*<<< orphan*/  auto_tdls_list; int /*<<< orphan*/  sta_list; int /*<<< orphan*/  rx_reorder_tbl_ptr; int /*<<< orphan*/  tx_ba_stream_tbl_ptr; TYPE_3__ wmm; } ;
struct mwifiex_adapter {size_t priv_num; struct mwifiex_private** priv; TYPE_1__* bss_prio_tbl; int /*<<< orphan*/  scan_pending_q; int /*<<< orphan*/  cmd_pending_q; int /*<<< orphan*/  cmd_free_q; } ;
typedef  size_t s32 ;
struct TYPE_5__ {int /*<<< orphan*/  ra_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  bss_prio_head; } ;

/* Variables and functions */
 size_t MAX_NUM_TID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct mwifiex_adapter *adapter)
{
	struct mwifiex_private *priv;
	s32 i, j;

	FUNC0(&adapter->cmd_free_q);
	FUNC0(&adapter->cmd_pending_q);
	FUNC0(&adapter->scan_pending_q);

	for (i = 0; i < adapter->priv_num; i++)
		FUNC0(&adapter->bss_prio_tbl[i].bss_prio_head);

	for (i = 0; i < adapter->priv_num; i++) {
		if (adapter->priv[i]) {
			priv = adapter->priv[i];
			for (j = 0; j < MAX_NUM_TID; ++j)
				FUNC0(&priv->wmm.tid_tbl_ptr[j].ra_list);
			FUNC0(&priv->tx_ba_stream_tbl_ptr);
			FUNC0(&priv->rx_reorder_tbl_ptr);
			FUNC0(&priv->sta_list);
			FUNC0(&priv->auto_tdls_list);
		}
	}
}