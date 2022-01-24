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
typedef  int /*<<< orphan*/  u8 ;
struct mwifiex_ra_list_tbl {int /*<<< orphan*/  list; scalar_t__ total_pkt_count; scalar_t__ tx_paused; } ;
struct TYPE_2__ {int /*<<< orphan*/  ra_list_spinlock; int /*<<< orphan*/  tx_pkts_queued; int /*<<< orphan*/ * pkts_paused; } ;
struct mwifiex_private {TYPE_1__ wmm; } ;

/* Variables and functions */
 int MAX_NUM_TID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_ra_list_tbl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*,struct mwifiex_ra_list_tbl*) ; 
 struct mwifiex_ra_list_tbl* FUNC4 (struct mwifiex_private*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct mwifiex_private *priv, const u8 *ra_addr)
{
	struct mwifiex_ra_list_tbl *ra_list;
	int i;

	FUNC5(&priv->wmm.ra_list_spinlock);

	for (i = 0; i < MAX_NUM_TID; ++i) {
		ra_list = FUNC4(priv, i, ra_addr);

		if (!ra_list)
			continue;
		FUNC3(priv, ra_list);
		if (ra_list->tx_paused)
			priv->wmm.pkts_paused[i] -= ra_list->total_pkt_count;
		else
			FUNC0(ra_list->total_pkt_count,
				   &priv->wmm.tx_pkts_queued);
		FUNC2(&ra_list->list);
		FUNC1(ra_list);
	}
	FUNC6(&priv->wmm.ra_list_spinlock);
}