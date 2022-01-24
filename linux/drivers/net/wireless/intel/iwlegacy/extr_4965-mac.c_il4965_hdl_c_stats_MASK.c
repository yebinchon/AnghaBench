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
struct TYPE_4__ {int /*<<< orphan*/  flag; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;
struct il_rx_pkt {TYPE_2__ u; } ;
struct il_rx_buf {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_delta; int /*<<< orphan*/  delta_stats; int /*<<< orphan*/  accum_stats; } ;
struct il_priv {TYPE_3__ _4965; } ;
struct il_notif_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int UCODE_STATS_CLEAR_MSK ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,struct il_rx_buf*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct il_rx_pkt* FUNC4 (struct il_rx_buf*) ; 

__attribute__((used)) static void
FUNC5(struct il_priv *il, struct il_rx_buf *rxb)
{
	struct il_rx_pkt *pkt = FUNC4(rxb);

	if (FUNC2(pkt->u.stats.flag) & UCODE_STATS_CLEAR_MSK) {
#ifdef CONFIG_IWLEGACY_DEBUGFS
		memset(&il->_4965.accum_stats, 0,
		       sizeof(struct il_notif_stats));
		memset(&il->_4965.delta_stats, 0,
		       sizeof(struct il_notif_stats));
		memset(&il->_4965.max_delta, 0, sizeof(struct il_notif_stats));
#endif
		FUNC0("Statistics have been cleared\n");
	}
	FUNC1(il, rxb);
}