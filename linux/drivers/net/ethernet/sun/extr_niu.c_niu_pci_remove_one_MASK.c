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
struct niu {int /*<<< orphan*/ * regs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct niu* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC6(pdev);

	if (dev) {
		struct niu *np = FUNC2(dev);

		FUNC8(dev);
		if (np->regs) {
			FUNC1(np->regs);
			np->regs = NULL;
		}

		FUNC3(np);

		FUNC4(np);

		FUNC0(dev);
		FUNC7(pdev);
		FUNC5(pdev);
	}
}