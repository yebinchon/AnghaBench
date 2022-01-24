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
struct ptp_qoriq {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int enetc_phc_index ; 
 int /*<<< orphan*/  FUNC0 (struct ptp_qoriq*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct ptp_qoriq* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ptp_qoriq*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct ptp_qoriq *ptp_qoriq = FUNC3(pdev);

	enetc_phc_index = -1;
	FUNC5(ptp_qoriq);
	FUNC2(pdev);
	FUNC0(ptp_qoriq);

	FUNC4(pdev);
	FUNC1(pdev);
}