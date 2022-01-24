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
struct tc35815_local {int /*<<< orphan*/  lock; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  phydev; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tc35815_local* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  tc35815_interrupt ; 

__attribute__((used)) static int
FUNC12(struct net_device *dev)
{
	struct tc35815_local *lp = FUNC2(dev);

	/*
	 * This is used if the interrupt line can turned off (shared).
	 * See 3c503.c for an example of selecting the IRQ at config-time.
	 */
	if (FUNC6(dev->irq, tc35815_interrupt, IRQF_SHARED,
			dev->name, dev))
		return -EAGAIN;

	FUNC10(dev);

	if (FUNC11(dev) != 0) {
		FUNC0(dev->irq, dev);
		return -EAGAIN;
	}

	FUNC1(&lp->napi);

	/* Reset the hardware here. Don't forget to set the station address. */
	FUNC7(&lp->lock);
	FUNC9(dev);
	FUNC8(&lp->lock);

	FUNC3(dev);
	/* schedule a link state check */
	FUNC5(dev->phydev);

	/* We are now ready to accept transmit requeusts from
	 * the queueing layer of the networking.
	 */
	FUNC4(dev);

	return 0;
}