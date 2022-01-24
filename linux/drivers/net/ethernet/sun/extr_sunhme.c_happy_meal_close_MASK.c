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
struct net_device {int dummy; } ;
struct happy_meal {int happy_flags; int /*<<< orphan*/  irq; int /*<<< orphan*/  happy_lock; int /*<<< orphan*/  happy_timer; int /*<<< orphan*/  gregs; } ;

/* Variables and functions */
 int HFLAG_PCI ; 
 int HFLAG_QUATTRO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct happy_meal*) ; 
 int /*<<< orphan*/  FUNC3 (struct happy_meal*,int /*<<< orphan*/ ) ; 
 struct happy_meal* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct happy_meal *hp = FUNC4(dev);

	FUNC5(&hp->happy_lock);
	FUNC3(hp, hp->gregs);
	FUNC2(hp);

	/* If auto-negotiation timer is running, kill it. */
	FUNC0(&hp->happy_timer);

	FUNC6(&hp->happy_lock);

	/* On Quattro QFE cards, all hme interrupts are concentrated
	 * into a single source which we register handling at probe
	 * time and never unregister.
	 */
	if ((hp->happy_flags & (HFLAG_QUATTRO|HFLAG_PCI)) != HFLAG_QUATTRO)
		FUNC1(hp->irq, dev);

	return 0;
}