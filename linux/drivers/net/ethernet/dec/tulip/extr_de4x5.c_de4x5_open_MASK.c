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
typedef  int /*<<< orphan*/  u_long ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  base_addr; } ;
struct de4x5_private {int rxRingSize; int /*<<< orphan*/  interrupt; int /*<<< orphan*/  state; int /*<<< orphan*/  adapter_name; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSED ; 
 int /*<<< orphan*/  DE4X5_BMR ; 
 int /*<<< orphan*/  DE4X5_IMR ; 
 int /*<<< orphan*/  DE4X5_OMR ; 
 int /*<<< orphan*/  DE4X5_SICR ; 
 int /*<<< orphan*/  DE4X5_SIGR ; 
 int /*<<< orphan*/  DE4X5_SISR ; 
 int /*<<< orphan*/  DE4X5_STRR ; 
 int /*<<< orphan*/  DE4X5_STS ; 
 int DEBUG_OPEN ; 
 int EAGAIN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  OPEN ; 
 int /*<<< orphan*/  SLEEP ; 
 int /*<<< orphan*/  START_DE4X5 ; 
 int /*<<< orphan*/  UNMASK_INTERRUPTS ; 
 int /*<<< orphan*/  WAKEUP ; 
 int /*<<< orphan*/ * FUNC0 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int de4x5_debug ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  de4x5_interrupt ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC8(dev);
    u_long iobase = dev->base_addr;
    int i, status = 0;
    s32 omr;

    /* Allocate the RX buffers */
    for (i=0; i<lp->rxRingSize; i++) {
	if (FUNC0(dev, i, 0) == NULL) {
	    FUNC2(dev);
	    return -EAGAIN;
	}
    }

    /*
    ** Wake up the adapter
    */
    FUNC13(dev, WAKEUP);

    /*
    ** Re-initialize the DE4X5...
    */
    status = FUNC4(dev);
    FUNC12(&lp->lock);
    lp->state = OPEN;
    FUNC1(dev);

    if (FUNC11(dev->irq, de4x5_interrupt, IRQF_SHARED,
		                                     lp->adapter_name, dev)) {
	FUNC10("de4x5_open(): Requested IRQ%d is busy - attempting FAST/SHARE...", dev->irq);
	if (FUNC11(dev->irq, de4x5_interrupt, IRQF_SHARED,
			                             lp->adapter_name, dev)) {
	    FUNC10("\n              Cannot get IRQ- reconfigure your hardware.\n");
	    FUNC6(dev);
	    FUNC2(dev);
	    FUNC3(dev);
	    FUNC13(dev, SLEEP);
	    lp->state = CLOSED;
	    return -EAGAIN;
	} else {
	    FUNC10("\n              Succeeded, but you should reconfigure your hardware to avoid this.\n");
	    FUNC10("WARNING: there may be IRQ related problems in heavily loaded systems.\n");
	}
    }

    lp->interrupt = UNMASK_INTERRUPTS;
    FUNC9(dev); /* prevent tx timeout */

    START_DE4X5;

    FUNC5(dev);

    if (de4x5_debug & DEBUG_OPEN) {
	FUNC10("\tsts:  0x%08x\n", FUNC7(DE4X5_STS));
	FUNC10("\tbmr:  0x%08x\n", FUNC7(DE4X5_BMR));
	FUNC10("\timr:  0x%08x\n", FUNC7(DE4X5_IMR));
	FUNC10("\tomr:  0x%08x\n", FUNC7(DE4X5_OMR));
	FUNC10("\tsisr: 0x%08x\n", FUNC7(DE4X5_SISR));
	FUNC10("\tsicr: 0x%08x\n", FUNC7(DE4X5_SICR));
	FUNC10("\tstrr: 0x%08x\n", FUNC7(DE4X5_STRR));
	FUNC10("\tsigr: 0x%08x\n", FUNC7(DE4X5_SIGR));
    }

    return status;
}