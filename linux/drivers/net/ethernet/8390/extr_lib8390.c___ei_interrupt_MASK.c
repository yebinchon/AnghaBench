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
struct TYPE_2__ {int rx_frame_errors; int rx_crc_errors; int rx_missed_errors; } ;
struct net_device {unsigned long base_addr; TYPE_1__ stats; } ;
struct ei_device {int /*<<< orphan*/  page_lock; scalar_t__ irqlock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ E8390_CMD ; 
 int E8390_NODMA ; 
 int E8390_PAGE0 ; 
 int E8390_START ; 
 scalar_t__ EN0_COUNTER0 ; 
 scalar_t__ EN0_COUNTER1 ; 
 scalar_t__ EN0_COUNTER2 ; 
 scalar_t__ EN0_IMR ; 
 scalar_t__ EN0_ISR ; 
 int ENISR_ALL ; 
 int ENISR_COUNTERS ; 
 int ENISR_OVER ; 
 int ENISR_RDC ; 
 int ENISR_RX ; 
 int ENISR_RX_ERR ; 
 int ENISR_TX ; 
 int ENISR_TX_ERR ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_SERVICE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int,int) ; 
 struct ei_device* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct ei_device*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 scalar_t__ FUNC11 (struct ei_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	unsigned long e8390_base = dev->base_addr;
	int interrupts, nr_serviced = 0;
	struct ei_device *ei_local = FUNC8(dev);

	/*
	 *	Protect the irq test too.
	 */

	FUNC13(&ei_local->page_lock);

	if (ei_local->irqlock) {
		/*
		 * This might just be an interrupt for a PCI device sharing
		 * this line
		 */
		FUNC7(dev, "Interrupted while interrupts are masked! isr=%#2x imr=%#2x\n",
			   FUNC1(e8390_base + EN0_ISR),
			   FUNC1(e8390_base + EN0_IMR));
		FUNC14(&ei_local->page_lock);
		return IRQ_NONE;
	}

	/* Change to page 0 and read the intr status reg. */
	FUNC2(E8390_NODMA+E8390_PAGE0, e8390_base + E8390_CMD);
	FUNC10(ei_local, intr, dev, "interrupt(isr=%#2.2x)\n",
		  FUNC1(e8390_base + EN0_ISR));

	/* !!Assumption!! -- we stay in page 0.	 Don't break this. */
	while ((interrupts = FUNC1(e8390_base + EN0_ISR)) != 0 &&
	       ++nr_serviced < MAX_SERVICE) {
		if (!FUNC12(dev)) {
			FUNC9(dev, "interrupt from stopped card\n");
			/* rmk - acknowledge the interrupts */
			FUNC2(interrupts, e8390_base + EN0_ISR);
			interrupts = 0;
			break;
		}
		if (interrupts & ENISR_OVER)
			FUNC4(dev);
		else if (interrupts & (ENISR_RX+ENISR_RX_ERR)) {
			/* Got a good (?) packet. */
			FUNC3(dev);
		}
		/* Push the next to-transmit packet through. */
		if (interrupts & ENISR_TX)
			FUNC6(dev);
		else if (interrupts & ENISR_TX_ERR)
			FUNC5(dev);

		if (interrupts & ENISR_COUNTERS) {
			dev->stats.rx_frame_errors += FUNC1(e8390_base + EN0_COUNTER0);
			dev->stats.rx_crc_errors   += FUNC1(e8390_base + EN0_COUNTER1);
			dev->stats.rx_missed_errors += FUNC1(e8390_base + EN0_COUNTER2);
			FUNC2(ENISR_COUNTERS, e8390_base + EN0_ISR); /* Ack intr. */
		}

		/* Ignore any RDC interrupts that make it back to here. */
		if (interrupts & ENISR_RDC)
			FUNC2(ENISR_RDC, e8390_base + EN0_ISR);

		FUNC2(E8390_NODMA+E8390_PAGE0+E8390_START, e8390_base + E8390_CMD);
	}

	if (interrupts && (FUNC11(ei_local))) {
		FUNC2(E8390_NODMA+E8390_PAGE0+E8390_START, e8390_base + E8390_CMD);
		if (nr_serviced >= MAX_SERVICE) {
			/* 0xFF is valid for a card removal */
			if (interrupts != 0xFF)
				FUNC9(dev, "Too much work at interrupt, status %#2.2x\n",
					    interrupts);
			FUNC2(ENISR_ALL, e8390_base + EN0_ISR); /* Ack. most intrs. */
		} else {
			FUNC9(dev, "unknown interrupt %#2x\n", interrupts);
			FUNC2(0xff, e8390_base + EN0_ISR); /* Ack. all intrs. */
		}
	}
	FUNC14(&ei_local->page_lock);
	return FUNC0(nr_serviced > 0);
}