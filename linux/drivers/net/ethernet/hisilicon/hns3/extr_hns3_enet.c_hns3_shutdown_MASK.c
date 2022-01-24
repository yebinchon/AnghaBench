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
struct hnae3_ae_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ SYSTEM_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct hnae3_ae_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae3_ae_dev*) ; 
 struct hnae3_ae_dev* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ system_state ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct hnae3_ae_dev *ae_dev = FUNC2(pdev);

	FUNC1(ae_dev);
	FUNC0(&pdev->dev, ae_dev);
	FUNC3(pdev, NULL);

	if (system_state == SYSTEM_POWER_OFF)
		FUNC4(pdev, PCI_D3hot);
}