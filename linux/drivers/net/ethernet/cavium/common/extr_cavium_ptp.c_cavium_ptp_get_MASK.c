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
struct cavium_ptp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct cavium_ptp* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cavium_ptp*) ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_CAVIUM_PTP ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_CAVIUM ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cavium_ptp* FUNC4 (struct pci_dev*) ; 

struct cavium_ptp *FUNC5(void)
{
	struct cavium_ptp *ptp;
	struct pci_dev *pdev;

	pdev = FUNC3(PCI_VENDOR_ID_CAVIUM,
			      PCI_DEVICE_ID_CAVIUM_PTP, NULL);
	if (!pdev)
		return FUNC0(-ENODEV);

	ptp = FUNC4(pdev);
	if (!ptp)
		ptp = FUNC0(-EPROBE_DEFER);
	if (FUNC1(ptp))
		FUNC2(pdev);

	return ptp;
}