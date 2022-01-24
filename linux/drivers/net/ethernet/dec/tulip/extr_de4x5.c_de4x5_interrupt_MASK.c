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
typedef  int /*<<< orphan*/  u_long ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; int /*<<< orphan*/  base_addr; } ;
struct TYPE_2__ {scalar_t__ lock; int /*<<< orphan*/  queue; } ;
struct de4x5_private {int irq_mask; int /*<<< orphan*/  lock; scalar_t__ interrupt; TYPE_1__ cache; scalar_t__ tx_enable; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DE4X5_STS ; 
 int /*<<< orphan*/  DISABLE_IRQs ; 
 int /*<<< orphan*/  ENABLE_IRQs ; 
 int IMR_LFM ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  MASK_INTERRUPTS ; 
 int /*<<< orphan*/  STOP_DE4X5 ; 
 int STS_LNF ; 
 int STS_RI ; 
 int STS_RU ; 
 int STS_SE ; 
 int STS_TI ; 
 int STS_TU ; 
 int STS_UNF ; 
 scalar_t__ UNMASK_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static irqreturn_t
FUNC16(int irq, void *dev_id)
{
    struct net_device *dev = dev_id;
    struct de4x5_private *lp;
    s32 imr, omr, sts, limit;
    u_long iobase;
    unsigned int handled = 0;

    lp = FUNC7(dev);
    FUNC12(&lp->lock);
    iobase = dev->base_addr;

    DISABLE_IRQs;                        /* Ensure non re-entrancy */

    if (FUNC15(MASK_INTERRUPTS, (void*) &lp->interrupt))
	FUNC10("%s: Re-entering the interrupt handler.\n", dev->name);

    FUNC14(dev->irq);

    for (limit=0; limit<8; limit++) {
	sts = FUNC6(DE4X5_STS);            /* Read IRQ status */
	FUNC9(sts, DE4X5_STS);            /* Reset the board interrupts */

	if (!(sts & lp->irq_mask)) break;/* All done */
	handled = 1;

	if (sts & (STS_RI | STS_RU))     /* Rx interrupt (packet[s] arrived) */
	  FUNC3(dev);

	if (sts & (STS_TI | STS_TU))     /* Tx interrupt (packet sent) */
	  FUNC4(dev);

	if (sts & STS_LNF) {             /* TP Link has failed */
	    lp->irq_mask &= ~IMR_LFM;
	}

	if (sts & STS_UNF) {             /* Transmit underrun */
	    FUNC5(dev);
	}

	if (sts & STS_SE) {              /* Bus Error */
	    STOP_DE4X5;
	    FUNC10("%s: Fatal bus error occurred, sts=%#8x, device stopped.\n",
		   dev->name, sts);
	    FUNC13(&lp->lock);
	    return IRQ_HANDLED;
	}
    }

    /* Load the TX ring with any locally stored packets */
    if (!FUNC15(0, (void *)&lp->cache.lock)) {
	while (!FUNC11(&lp->cache.queue) && !FUNC8(dev) && lp->tx_enable) {
	    FUNC2(FUNC1(dev), dev);
	}
	lp->cache.lock = 0;
    }

    lp->interrupt = UNMASK_INTERRUPTS;
    ENABLE_IRQs;
    FUNC13(&lp->lock);

    return FUNC0(handled);
}