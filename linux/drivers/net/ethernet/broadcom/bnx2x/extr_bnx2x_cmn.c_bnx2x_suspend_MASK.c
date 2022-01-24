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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct bnx2x {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  UNLOAD_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct bnx2x* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(struct pci_dev *pdev, pm_message_t state)
{
	struct net_device *dev = FUNC7(pdev);
	struct bnx2x *bp;

	if (!dev) {
		FUNC2(&pdev->dev, "BAD net device from bnx2x_init_one\n");
		return -ENODEV;
	}
	bp = FUNC3(dev);

	FUNC9();

	FUNC8(pdev);

	if (!FUNC5(dev)) {
		FUNC10();
		return 0;
	}

	FUNC4(dev);

	FUNC0(bp, UNLOAD_CLOSE, false);

	FUNC1(bp, FUNC6(pdev, state));

	FUNC10();

	return 0;
}