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
typedef  int u32 ;
struct netdata_local {int last_tx_idx; unsigned int* skblen; int* tx_stat_v; int num_used_tx_buffs; int /*<<< orphan*/  net_base; } ;
struct TYPE_2__ {unsigned int tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_aborted_errors; int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  collisions; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int ENET_TX_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int TXSTATUS_ERROR ; 
 int TXSTATUS_EXCESSCOLL ; 
 int TXSTATUS_EXCESSDEFER ; 
 int TXSTATUS_LATECOLL ; 
 int TXSTATUS_UNDERRUN ; 
 struct netdata_local* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct netdata_local *pldat = FUNC2(ndev);
	u32 txcidx, *ptxstat, txstat;

	txcidx = FUNC5(FUNC0(pldat->net_base));
	while (pldat->last_tx_idx != txcidx) {
		unsigned int skblen = pldat->skblen[pldat->last_tx_idx];

		/* A buffer is available, get buffer status */
		ptxstat = &pldat->tx_stat_v[pldat->last_tx_idx];
		txstat = *ptxstat;

		/* Next buffer and decrement used buffer counter */
		pldat->num_used_tx_buffs--;
		pldat->last_tx_idx++;
		if (pldat->last_tx_idx >= ENET_TX_DESC)
			pldat->last_tx_idx = 0;

		/* Update collision counter */
		ndev->stats.collisions += FUNC1(txstat);

		/* Any errors occurred? */
		if (txstat & TXSTATUS_ERROR) {
			if (txstat & TXSTATUS_UNDERRUN) {
				/* FIFO underrun */
				ndev->stats.tx_fifo_errors++;
			}
			if (txstat & TXSTATUS_LATECOLL) {
				/* Late collision */
				ndev->stats.tx_aborted_errors++;
			}
			if (txstat & TXSTATUS_EXCESSCOLL) {
				/* Excessive collision */
				ndev->stats.tx_aborted_errors++;
			}
			if (txstat & TXSTATUS_EXCESSDEFER) {
				/* Defer limit */
				ndev->stats.tx_aborted_errors++;
			}
			ndev->stats.tx_errors++;
		} else {
			/* Update stats */
			ndev->stats.tx_packets++;
			ndev->stats.tx_bytes += skblen;
		}

		txcidx = FUNC5(FUNC0(pldat->net_base));
	}

	if (pldat->num_used_tx_buffs <= ENET_TX_DESC/2) {
		if (FUNC3(ndev))
			FUNC4(ndev);
	}
}