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
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct il_rx_pkt {TYPE_2__ u; int /*<<< orphan*/  len_n_flags; } ;
struct il_rx_buf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  stats; } ;
struct il_priv {TYPE_1__ _3945; } ;
struct il3945_notif_stats {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int IL_RX_FRAME_SIZE_MSK ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct il_rx_pkt* FUNC4 (struct il_rx_buf*) ; 

void
FUNC5(struct il_priv *il, struct il_rx_buf *rxb)
{
	struct il_rx_pkt *pkt = FUNC4(rxb);

	FUNC0("Statistics notification received (%d vs %d).\n",
	     (int)sizeof(struct il3945_notif_stats),
	     FUNC2(pkt->len_n_flags) & IL_RX_FRAME_SIZE_MSK);
#ifdef CONFIG_IWLEGACY_DEBUGFS
	il3945_accumulative_stats(il, (__le32 *) &pkt->u.raw);
#endif

	FUNC3(&il->_3945.stats, pkt->u.raw, sizeof(il->_3945.stats));
}