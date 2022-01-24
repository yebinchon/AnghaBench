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
typedef  int u16 ;
struct net_device {unsigned int base_addr; } ;
struct el3_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  last_irq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int __u16 ;

/* Variables and functions */
 int AckIntr ; 
 int AdapterFailure ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EL3_CMD ; 
 unsigned int EL3_STATUS ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IntLatch ; 
 int IntReq ; 
 int RxComplete ; 
 int RxEarly ; 
 int RxEnable ; 
 int /*<<< orphan*/  RxReset ; 
 int StatsFull ; 
 int TxAvailable ; 
 int TxComplete ; 
 int TxEnable ; 
 int /*<<< orphan*/  TxReset ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int) ; 
 struct el3_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC17(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *) dev_id;
	struct el3_private *lp = FUNC6(dev);
	unsigned int ioaddr;
	__u16 status;
	int i = 0, handled = 1;

	if (!FUNC8(dev))
		return IRQ_NONE;

	ioaddr = dev->base_addr;

	FUNC4(dev, "interrupt, status %4.4x.\n", FUNC3(ioaddr + EL3_STATUS));

	FUNC13(&lp->lock);
	while ((status = FUNC3(ioaddr + EL3_STATUS)) &
	(IntLatch | RxComplete | StatsFull)) {
		if ((status & 0xe000) != 0x2000) {
			FUNC4(dev, "interrupt from dead card\n");
			handled = 0;
			break;
		}
		if (status & RxComplete)
			FUNC2(dev);
		if (status & TxAvailable) {
			FUNC4(dev, "    TX room bit was handled.\n");
			/* There's room in the FIFO for a full-sized packet. */
			FUNC10(AckIntr | TxAvailable, ioaddr + EL3_CMD);
			FUNC9(dev);
		}
		if (status & TxComplete)
			FUNC11(dev);
		if (status & (AdapterFailure | RxEarly | StatsFull)) {
			/* Handle all uncommon interrupts. */
			if (status & StatsFull)		/* Empty statistics. */
				FUNC16(dev);
			if (status & RxEarly) {
				/* Rx early is unused. */
				FUNC2(dev);
				FUNC10(AckIntr | RxEarly, ioaddr + EL3_CMD);
			}
			if (status & AdapterFailure) {
				u16 fifo_diag;
				FUNC0(4);
				fifo_diag = FUNC3(ioaddr + 4);
				FUNC0(1);
				FUNC7(dev, "adapter failure, FIFO diagnostic register %04x.\n",
			    fifo_diag);
				if (fifo_diag & 0x0400) {
					/* Tx overrun */
					FUNC15(dev, TxReset);
					FUNC10(TxEnable, ioaddr + EL3_CMD);
				}
				if (fifo_diag & 0x2000) {
					/* Rx underrun */
					FUNC15(dev, RxReset);
					FUNC12(dev);
					FUNC10(RxEnable, ioaddr + EL3_CMD);
				}
				FUNC10(AckIntr | AdapterFailure, ioaddr + EL3_CMD);
			}
		}
		if (++i > 10) {
			FUNC5(dev, "infinite loop in interrupt, status %4.4x.\n",
					status);
			/* Clear all interrupts */
			FUNC10(AckIntr | 0xFF, ioaddr + EL3_CMD);
			break;
		}
		/* Acknowledge the IRQ. */
		FUNC10(AckIntr | IntReq | IntLatch, ioaddr + EL3_CMD);
	}
	lp->last_irq = jiffies;
	FUNC14(&lp->lock);
	FUNC4(dev, "exiting interrupt, status %4.4x.\n",
			FUNC3(ioaddr + EL3_STATUS));
	return FUNC1(handled);
}