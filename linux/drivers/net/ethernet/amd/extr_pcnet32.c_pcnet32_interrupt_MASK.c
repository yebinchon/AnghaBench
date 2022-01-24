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
typedef  int u16 ;
struct pcnet32_private {int /*<<< orphan*/  lock; TYPE_2__* a; int /*<<< orphan*/  napi; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_errors; } ;
struct net_device {unsigned long base_addr; TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int (* read_csr ) (unsigned long,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_csr ) (unsigned long,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CSR0 ; 
 int /*<<< orphan*/  CSR3 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  intr ; 
 int max_interrupt_work ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct pcnet32_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcnet32_private*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pcnet32_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC10 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC13 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC14(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct pcnet32_private *lp;
	unsigned long ioaddr;
	u16 csr0;
	int boguscnt = max_interrupt_work;

	ioaddr = dev->base_addr;
	lp = FUNC2(dev);

	FUNC5(&lp->lock);

	csr0 = lp->a->read_csr(ioaddr, CSR0);
	while ((csr0 & 0x8f00) && --boguscnt >= 0) {
		if (csr0 == 0xffff)
			break;	/* PCMCIA remove happened */
		/* Acknowledge all of the current interrupt sources ASAP. */
		lp->a->write_csr(ioaddr, CSR0, csr0 & ~0x004f);

		FUNC4(lp, intr, KERN_DEBUG, dev,
			     "interrupt  csr0=%#2.2x new csr=%#2.2x\n",
			     csr0, lp->a->read_csr(ioaddr, CSR0));

		/* Log misc errors. */
		if (csr0 & 0x4000)
			dev->stats.tx_errors++;	/* Tx babble. */
		if (csr0 & 0x1000) {
			/*
			 * This happens when our receive ring is full. This
			 * shouldn't be a problem as we will see normal rx
			 * interrupts for the frames in the receive ring.  But
			 * there are some PCI chipsets (I can reproduce this
			 * on SP3G with Intel saturn chipset) which have
			 * sometimes problems and will fill up the receive
			 * ring with error descriptors.  In this situation we
			 * don't get a rx interrupt, but a missed frame
			 * interrupt sooner or later.
			 */
			dev->stats.rx_errors++;	/* Missed a Rx frame. */
		}
		if (csr0 & 0x0800) {
			FUNC3(lp, drv, dev, "Bus master arbitration failure, status %4.4x\n",
				  csr0);
			/* unlike for the lance, there is no restart needed */
		}
		if (FUNC1(&lp->napi)) {
			u16 val;
			/* set interrupt masks */
			val = lp->a->read_csr(ioaddr, CSR3);
			val |= 0x5f00;
			lp->a->write_csr(ioaddr, CSR3, val);

			FUNC0(&lp->napi);
			break;
		}
		csr0 = lp->a->read_csr(ioaddr, CSR0);
	}

	FUNC4(lp, intr, KERN_DEBUG, dev,
		     "exiting interrupt, csr0=%#4.4x\n",
		     lp->a->read_csr(ioaddr, CSR0));

	FUNC6(&lp->lock);

	return IRQ_HANDLED;
}