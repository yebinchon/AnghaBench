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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  base_addr; } ;
struct de4x5_private {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSED ; 
 int /*<<< orphan*/  DE4X5_STS ; 
 int DEBUG_CLOSE ; 
 int /*<<< orphan*/  DISABLE_IRQs ; 
 int /*<<< orphan*/  SLEEP ; 
 int /*<<< orphan*/  STOP_DE4X5 ; 
 int de4x5_debug ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC5(dev);
    u_long iobase = dev->base_addr;
    s32 imr, omr;

    FUNC2(dev);

    FUNC6(dev);

    if (de4x5_debug & DEBUG_CLOSE) {
	FUNC7("%s: Shutting down ethercard, status was %8.8x.\n",
	       dev->name, FUNC4(DE4X5_STS));
    }

    /*
    ** We stop the DE4X5 here... mask interrupts and stop TX & RX
    */
    DISABLE_IRQs;
    STOP_DE4X5;

    /* Free the associated irq */
    FUNC3(dev->irq, dev);
    lp->state = CLOSED;

    /* Free any socket buffers */
    FUNC0(dev);
    FUNC1(dev);

    /* Put the adapter to sleep to save power */
    FUNC8(dev, SLEEP);

    return 0;
}