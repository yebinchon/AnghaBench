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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct mwifiex_ra_list_tbl {scalar_t__ tx_paused; scalar_t__ total_pkt_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  ra_list_spinlock; int /*<<< orphan*/  highest_queued_prio; int /*<<< orphan*/  tx_pkts_queued; int /*<<< orphan*/ * pkts_paused; } ;
struct mwifiex_private {TYPE_1__ wmm; } ;

/* Variables and functions */
 scalar_t__ HIGH_PRIO_TID ; 
 int MAX_NUM_TID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct mwifiex_ra_list_tbl* FUNC2 (struct mwifiex_private*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mwifiex_private *priv, u8 *mac,
				    u8 tx_pause)
{
	struct mwifiex_ra_list_tbl *ra_list;
	u32 pkt_cnt = 0, tx_pkts_queued;
	int i;

	FUNC3(&priv->wmm.ra_list_spinlock);

	for (i = 0; i < MAX_NUM_TID; ++i) {
		ra_list = FUNC2(priv, i, mac);
		if (ra_list && ra_list->tx_paused != tx_pause) {
			pkt_cnt += ra_list->total_pkt_count;
			ra_list->tx_paused = tx_pause;
			if (tx_pause)
				priv->wmm.pkts_paused[i] +=
					ra_list->total_pkt_count;
			else
				priv->wmm.pkts_paused[i] -=
					ra_list->total_pkt_count;
		}
	}

	if (pkt_cnt) {
		tx_pkts_queued = FUNC0(&priv->wmm.tx_pkts_queued);
		if (tx_pause)
			tx_pkts_queued -= pkt_cnt;
		else
			tx_pkts_queued += pkt_cnt;

		FUNC1(&priv->wmm.tx_pkts_queued, tx_pkts_queued);
		FUNC1(&priv->wmm.highest_queued_prio, HIGH_PRIO_TID);
	}
	FUNC4(&priv->wmm.ra_list_spinlock);
}