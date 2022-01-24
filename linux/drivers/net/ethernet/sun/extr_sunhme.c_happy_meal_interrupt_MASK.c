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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct happy_meal {int /*<<< orphan*/  happy_lock; scalar_t__ gregs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ GREG_STAT ; 
 int GREG_STAT_ERRORS ; 
 int GREG_STAT_MIFIRQ ; 
 int GREG_STAT_RXTOHOST ; 
 int GREG_STAT_TXALL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC1 (struct happy_meal*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct happy_meal*) ; 
 int /*<<< orphan*/  FUNC3 (struct happy_meal*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct happy_meal*) ; 
 int FUNC5 (struct happy_meal*,scalar_t__) ; 
 struct happy_meal* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct happy_meal *hp  = FUNC6(dev);
	u32 happy_status       = FUNC5(hp, hp->gregs + GREG_STAT);

	FUNC0(("happy_meal_interrupt: status=%08x ", happy_status));

	FUNC7(&hp->happy_lock);

	if (happy_status & GREG_STAT_ERRORS) {
		FUNC0(("ERRORS "));
		if (FUNC1(hp, /* un- */ happy_status))
			goto out;
	}

	if (happy_status & GREG_STAT_MIFIRQ) {
		FUNC0(("MIFIRQ "));
		FUNC2(hp);
	}

	if (happy_status & GREG_STAT_TXALL) {
		FUNC0(("TXALL "));
		FUNC4(hp);
	}

	if (happy_status & GREG_STAT_RXTOHOST) {
		FUNC0(("RXTOHOST "));
		FUNC3(hp, dev);
	}

	FUNC0(("done\n"));
out:
	FUNC8(&hp->happy_lock);

	return IRQ_HANDLED;
}