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
struct net_device {int /*<<< orphan*/  irq; } ;
struct lance_private {int /*<<< orphan*/  multicast_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lance_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 struct lance_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct lance_private *lp = FUNC3(dev);

	FUNC4(dev);
	FUNC1(&lp->multicast_timer);

	FUNC0(lp);

	FUNC2(dev->irq, (void *) dev);
	return 0;
}