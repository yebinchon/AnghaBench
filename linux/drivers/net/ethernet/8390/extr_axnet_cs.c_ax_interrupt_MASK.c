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
struct net_device {long base_addr; TYPE_1__ stats; } ;
struct ei_device {int irqlock; int /*<<< orphan*/  page_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ EN0_COUNTER0 ; 
 scalar_t__ EN0_COUNTER1 ; 
 scalar_t__ EN0_COUNTER2 ; 
 scalar_t__ EN0_IMR ; 
 scalar_t__ EN0_ISR ; 
 int ENISR_ALL ; 
 int ENISR_COUNTERS ; 
 int ENISR_OVER ; 
 int ENISR_RX ; 
 int ENISR_RX_ERR ; 
 int ENISR_TX ; 
 int ENISR_TX_ERR ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_SERVICE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,char const*,int,int) ; 
 struct ei_device* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ei_device*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 scalar_t__ FUNC11 (struct ei_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ei_device*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC17(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	long e8390_base;
	int interrupts, nr_serviced = 0, i;
	struct ei_device *ei_local;
    	int handled = 0;
	unsigned long flags;

	e8390_base = dev->base_addr;
	ei_local = FUNC8(dev);

	/*
	 *	Protect the irq test too.
	 */
	 
	FUNC15(&ei_local->page_lock, flags);

	if (ei_local->irqlock) {
#if 1 /* This might just be an interrupt for a PCI device sharing this line */
		const char *msg;
		/* The "irqlock" check is only for testing. */
		if (ei_local->irqlock)
			msg = "Interrupted while interrupts are masked!";
		else
			msg = "Reentering the interrupt handler!";
		FUNC7(dev, "%s, isr=%#2x imr=%#2x\n",
			    msg,
			    FUNC6(e8390_base + EN0_ISR),
			    FUNC6(e8390_base + EN0_IMR));
#endif
		FUNC16(&ei_local->page_lock, flags);
		return IRQ_NONE;
	}

	FUNC10(ei_local, intr, dev, "interrupt(isr=%#2.2x)\n",
		  FUNC6(e8390_base + EN0_ISR));

	FUNC14(0x00, e8390_base + EN0_ISR);
	ei_local->irqlock = 1;
   
	/* !!Assumption!! -- we stay in page 0.	 Don't break this. */
	while ((interrupts = FUNC6(e8390_base + EN0_ISR)) != 0 &&
	       ++nr_serviced < MAX_SERVICE)
	{
		if (!FUNC12(dev) || (interrupts == 0xff)) {
			FUNC13(ei_local, intr, dev,
				   "interrupt from stopped card\n");
			FUNC14(interrupts, e8390_base + EN0_ISR);
			interrupts = 0;
			break;
		}
		handled = 1;

		/* AX88190 bug fix. */
		FUNC14(interrupts, e8390_base + EN0_ISR);
		for (i = 0; i < 10; i++) {
			if (!(FUNC5(e8390_base + EN0_ISR) & interrupts))
				break;
			FUNC14(0, e8390_base + EN0_ISR);
			FUNC14(interrupts, e8390_base + EN0_ISR);
		}
		if (interrupts & ENISR_OVER) 
			FUNC2(dev);
		else if (interrupts & (ENISR_RX+ENISR_RX_ERR)) 
		{
			/* Got a good (?) packet. */
			FUNC1(dev);
		}
		/* Push the next to-transmit packet through. */
		if (interrupts & ENISR_TX)
			FUNC4(dev);
		else if (interrupts & ENISR_TX_ERR)
			FUNC3(dev);

		if (interrupts & ENISR_COUNTERS) 
		{
			dev->stats.rx_frame_errors += FUNC6(e8390_base + EN0_COUNTER0);
			dev->stats.rx_crc_errors   += FUNC6(e8390_base + EN0_COUNTER1);
			dev->stats.rx_missed_errors+= FUNC6(e8390_base + EN0_COUNTER2);
		}
	}
    
	if (interrupts && (FUNC11(ei_local)))
	{
		handled = 1;
		if (nr_serviced >= MAX_SERVICE) 
		{
			/* 0xFF is valid for a card removal */
			if (interrupts != 0xFF)
				FUNC9(dev,
					    "Too much work at interrupt, status %#2.2x\n",
					    interrupts);
			FUNC14(ENISR_ALL, e8390_base + EN0_ISR); /* Ack. most intrs. */
		} else {
			FUNC9(dev, "unknown interrupt %#2x\n",
				    interrupts);
			FUNC14(0xff, e8390_base + EN0_ISR); /* Ack. all intrs. */
		}
	}

	/* Turn 8390 interrupts back on. */
	ei_local->irqlock = 0;
	FUNC14(ENISR_ALL, e8390_base + EN0_IMR);

	FUNC16(&ei_local->page_lock, flags);
	return FUNC0(handled);
}