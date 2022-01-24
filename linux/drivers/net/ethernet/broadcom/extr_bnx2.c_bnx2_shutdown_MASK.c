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
struct bnx2 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ SYSTEM_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct bnx2* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ system_state ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC4(pdev);
	struct bnx2 *bp;

	if (!dev)
		return;

	bp = FUNC2(dev);
	if (!bp)
		return;

	FUNC5();
	if (FUNC3(dev))
		FUNC1(bp->dev);

	if (system_state == SYSTEM_POWER_OFF)
		FUNC0(bp, PCI_D3hot);

	FUNC6();
}