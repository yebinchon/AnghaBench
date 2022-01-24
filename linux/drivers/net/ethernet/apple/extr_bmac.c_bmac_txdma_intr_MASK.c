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
struct TYPE_4__ {int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct dbdma_cmd {int /*<<< orphan*/  xfer_status; } ;
struct bmac_data {size_t tx_empty; size_t tx_fill; int /*<<< orphan*/  lock; scalar_t__ tx_fullup; int /*<<< orphan*/ ** tx_bufs; TYPE_1__* tx_dma; struct dbdma_cmd* tx_cmds; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  cmdptr; } ;

/* Variables and functions */
 int ACTIVE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 size_t N_TX_RING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct dbdma_cmd volatile* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct bmac_data* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int txintcount ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *) dev_id;
	struct bmac_data *bp = FUNC6(dev);
	volatile struct dbdma_cmd *cp;
	int stat;
	unsigned long flags;

	FUNC8(&bp->lock, flags);

	if (txintcount++ < 10) {
		FUNC0(("bmac_txdma_intr\n"));
	}

	/*     del_timer(&bp->tx_timeout); */
	/*     bp->timeout_active = 0; */

	while (1) {
		cp = &bp->tx_cmds[bp->tx_empty];
		stat = FUNC5(cp->xfer_status);
		if (txintcount < 10) {
			FUNC0(("bmac_txdma_xfer_stat=%#0x\n", stat));
		}
		if (!(stat & ACTIVE)) {
			/*
			 * status field might not have been filled by DBDMA
			 */
			if (cp == FUNC2(FUNC4(&bp->tx_dma->cmdptr)))
				break;
		}

		if (bp->tx_bufs[bp->tx_empty]) {
			++dev->stats.tx_packets;
			FUNC3(bp->tx_bufs[bp->tx_empty]);
		}
		bp->tx_bufs[bp->tx_empty] = NULL;
		bp->tx_fullup = 0;
		FUNC7(dev);
		if (++bp->tx_empty >= N_TX_RING)
			bp->tx_empty = 0;
		if (bp->tx_empty == bp->tx_fill)
			break;
	}

	FUNC9(&bp->lock, flags);

	if (txintcount < 10) {
		FUNC0(("bmac_txdma_intr done->bmac_start\n"));
	}

	FUNC1(dev);
	return IRQ_HANDLED;
}