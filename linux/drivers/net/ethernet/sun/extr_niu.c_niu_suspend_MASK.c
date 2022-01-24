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
struct pci_dev {int dummy; } ;
struct niu {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; int /*<<< orphan*/  reset_task; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct niu* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct niu*) ; 
 int /*<<< orphan*/  FUNC7 (struct niu*) ; 
 struct net_device* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pdev, pm_message_t state)
{
	struct net_device *dev = FUNC8(pdev);
	struct niu *np = FUNC2(dev);
	unsigned long flags;

	if (!FUNC4(dev))
		return 0;

	FUNC1(&np->reset_task);
	FUNC6(np);

	FUNC0(&np->timer);

	FUNC10(&np->lock, flags);
	FUNC5(np, 0);
	FUNC11(&np->lock, flags);

	FUNC3(dev);

	FUNC10(&np->lock, flags);
	FUNC7(np);
	FUNC11(&np->lock, flags);

	FUNC9(pdev);

	return 0;
}