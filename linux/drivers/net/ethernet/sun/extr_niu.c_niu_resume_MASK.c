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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct niu {int /*<<< orphan*/  lock; TYPE_1__ timer; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 struct niu* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct niu*) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC6(pdev);
	struct niu *np = FUNC1(dev);
	unsigned long flags;
	int err;

	if (!FUNC3(dev))
		return 0;

	FUNC7(pdev);

	FUNC2(dev);

	FUNC8(&np->lock, flags);

	err = FUNC4(np);
	if (!err) {
		np->timer.expires = jiffies + HZ;
		FUNC0(&np->timer);
		FUNC5(np);
	}

	FUNC9(&np->lock, flags);

	return err;
}