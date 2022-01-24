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
struct net_device {int base_addr; int name; int irq; } ;
struct corkscrew_private {unsigned int dirty_tx; unsigned int cur_tx; int /*<<< orphan*/  lock; int /*<<< orphan*/ * tx_skb; scalar_t__ tx_full; int /*<<< orphan*/ ** tx_skbuff; int /*<<< orphan*/ * tx_ring; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AckIntr ; 
 int AdapterFailure ; 
 int DMADone ; 
 int DownComplete ; 
 scalar_t__ DownListPtr ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EL3_CMD ; 
 scalar_t__ EL3_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int IntLatch ; 
 int IntReq ; 
 int RxComplete ; 
 int RxEarly ; 
 int RxEnable ; 
 int RxReset ; 
 int SetIntrEnb ; 
 int SetStatusEnb ; 
 int StatsFull ; 
 unsigned int TX_RING_SIZE ; 
 int Timer ; 
 int TxAvailable ; 
 int TxComplete ; 
 int UpComplete ; 
 scalar_t__ Wn7_MasterStatus ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int corkscrew_debug ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,struct net_device*) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int max_interrupt_work ; 
 struct corkscrew_private* FUNC9 (struct net_device*) ; 
 int FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int,struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC21(int irq, void *dev_id)
{
	/* Use the now-standard shared IRQ implementation. */
	struct net_device *dev = dev_id;
	struct corkscrew_private *lp = FUNC9(dev);
	int ioaddr, status;
	int latency;
	int i = max_interrupt_work;

	ioaddr = dev->base_addr;
	latency = FUNC5(ioaddr + Timer);

	FUNC18(&lp->lock);

	status = FUNC7(ioaddr + EL3_STATUS);

	if (corkscrew_debug > 4)
		FUNC14("%s: interrupt, status %4.4x, timer %d.\n",
			dev->name, status, latency);
	if ((status & 0xE000) != 0xE000) {
		static int donedidthis;
		/* Some interrupt controllers store a bogus interrupt from boot-time.
		   Ignore a single early interrupt, but don't hang the machine for
		   other interrupt problems. */
		if (donedidthis++ > 100) {
			FUNC15("%s: Bogus interrupt, bailing. Status %4.4x, start=%d.\n",
				   dev->name, status, FUNC10(dev));
			FUNC4(dev->irq, dev);
			dev->irq = -1;
		}
	}

	do {
		if (corkscrew_debug > 5)
			FUNC14("%s: In interrupt loop, status %4.4x.\n",
			       dev->name, status);
		if (status & RxComplete)
			FUNC2(dev);

		if (status & TxAvailable) {
			if (corkscrew_debug > 5)
				FUNC14("	TX room bit was handled.\n");
			/* There's room in the FIFO for a full-sized packet. */
			FUNC12(AckIntr | TxAvailable, ioaddr + EL3_CMD);
			FUNC11(dev);
		}
		if (status & DownComplete) {
			unsigned int dirty_tx = lp->dirty_tx;

			while (lp->cur_tx - dirty_tx > 0) {
				int entry = dirty_tx % TX_RING_SIZE;
				if (FUNC6(ioaddr + DownListPtr) == FUNC8(&lp->tx_ring[entry]))
					break;	/* It still hasn't been processed. */
				if (lp->tx_skbuff[entry]) {
					FUNC3(lp->tx_skbuff[entry]);
					lp->tx_skbuff[entry] = NULL;
				}
				dirty_tx++;
			}
			lp->dirty_tx = dirty_tx;
			FUNC12(AckIntr | DownComplete, ioaddr + EL3_CMD);
			if (lp->tx_full && (lp->cur_tx - dirty_tx <= TX_RING_SIZE - 1)) {
				lp->tx_full = 0;
				FUNC11(dev);
			}
		}
#ifdef VORTEX_BUS_MASTER
		if (status & DMADone) {
			outw(0x1000, ioaddr + Wn7_MasterStatus);	/* Ack the event. */
			dev_consume_skb_irq(lp->tx_skb);	/* Release the transferred buffer */
			netif_wake_queue(dev);
		}
#endif
		if (status & UpComplete) {
			FUNC1(dev);
			FUNC12(AckIntr | UpComplete, ioaddr + EL3_CMD);
		}
		if (status & (AdapterFailure | RxEarly | StatsFull)) {
			/* Handle all uncommon interrupts at once. */
			if (status & RxEarly) {	/* Rx early is unused. */
				FUNC2(dev);
				FUNC12(AckIntr | RxEarly, ioaddr + EL3_CMD);
			}
			if (status & StatsFull) {	/* Empty statistics. */
				static int DoneDidThat;
				if (corkscrew_debug > 4)
					FUNC14("%s: Updating stats.\n", dev->name);
				FUNC20(ioaddr, dev);
				/* DEBUG HACK: Disable statistics as an interrupt source. */
				/* This occurs when we have the wrong media type! */
				if (DoneDidThat == 0 && FUNC7(ioaddr + EL3_STATUS) & StatsFull) {
					int win, reg;
					FUNC16("%s: Updating stats failed, disabling stats as an interrupt source.\n",
						dev->name);
					for (win = 0; win < 8; win++) {
						FUNC0(win);
						FUNC16("Vortex window %d:", win);
						for (reg = 0; reg < 16; reg++)
							FUNC13(" %2.2x", FUNC5(ioaddr + reg));
						FUNC13("\n");
					}
					FUNC0(7);
					FUNC12(SetIntrEnb | TxAvailable |
					     RxComplete | AdapterFailure |
					     UpComplete | DownComplete |
					     TxComplete, ioaddr + EL3_CMD);
					DoneDidThat++;
				}
			}
			if (status & AdapterFailure) {
				/* Adapter failure requires Rx reset and reinit. */
				FUNC12(RxReset, ioaddr + EL3_CMD);
				/* Set the Rx filter to the current state. */
				FUNC17(dev);
				FUNC12(RxEnable, ioaddr + EL3_CMD);	/* Re-enable the receiver. */
				FUNC12(AckIntr | AdapterFailure,
				     ioaddr + EL3_CMD);
			}
		}

		if (--i < 0) {
			FUNC15("%s: Too much work in interrupt, status %4.4x. Disabling functions (%4.4x).\n",
				dev->name, status, SetStatusEnb | ((~status) & 0x7FE));
			/* Disable all pending interrupts. */
			FUNC12(SetStatusEnb | ((~status) & 0x7FE), ioaddr + EL3_CMD);
			FUNC12(AckIntr | 0x7FF, ioaddr + EL3_CMD);
			break;
		}
		/* Acknowledge the IRQ. */
		FUNC12(AckIntr | IntReq | IntLatch, ioaddr + EL3_CMD);

	} while ((status = FUNC7(ioaddr + EL3_STATUS)) & (IntLatch | RxComplete));

	FUNC19(&lp->lock);

	if (corkscrew_debug > 4)
		FUNC14("%s: exiting interrupt, status %4.4x.\n", dev->name, status);
	return IRQ_HANDLED;
}