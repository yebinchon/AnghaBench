#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ expires; } ;
struct netdev_private {TYPE_2__ timer; TYPE_1__* pdev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int irq; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 struct netdev_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  rio_interrupt ; 
 int /*<<< orphan*/  rio_timer ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct netdev_private *np = FUNC4(dev);
	const int irq = np->pdev->irq;
	int i;

	i = FUNC1(dev);
	if (i)
		return i;

	FUNC7(dev);

	i = FUNC6(irq, rio_interrupt, IRQF_SHARED, dev->name, dev);
	if (i) {
		FUNC8(dev);
		FUNC3(dev);
		return i;
	}

	FUNC9(&np->timer, rio_timer, 0);
	np->timer.expires = jiffies + 1 * HZ;
	FUNC0(&np->timer);

	FUNC5 (dev);

	FUNC2(np);
	return 0;
}