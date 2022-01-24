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
struct net_device {int dummy; } ;
struct gem_init_block {int dummy; } ;
struct gem {int /*<<< orphan*/  regs; int /*<<< orphan*/  gblock_dvma; int /*<<< orphan*/  init_block; int /*<<< orphan*/  reset_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct gem* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC5(pdev);

	if (dev) {
		struct gem *gp = FUNC3(dev);

		FUNC7(dev);

		/* Ensure reset task is truly gone */
		FUNC0(&gp->reset_task);

		/* Free resources */
		FUNC4(pdev,
				    sizeof(struct gem_init_block),
				    gp->init_block,
				    gp->gblock_dvma);
		FUNC2(gp->regs);
		FUNC6(pdev);
		FUNC1(dev);
	}
}