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
struct bnxt {int /*<<< orphan*/  wol; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ SYSTEM_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct bnxt* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ system_state ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC6(pdev);
	struct bnxt *bp;

	if (!dev)
		return;

	FUNC9();
	bp = FUNC3(dev);
	if (!bp)
		goto shutdown_exit;

	if (FUNC4(dev))
		FUNC2(dev);

	FUNC1(bp);

	if (system_state == SYSTEM_POWER_OFF) {
		FUNC0(bp);
		FUNC5(pdev);
		FUNC8(pdev, bp->wol);
		FUNC7(pdev, PCI_D3hot);
	}

shutdown_exit:
	FUNC10();
}