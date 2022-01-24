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
struct hnae3_ae_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_IOV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae3_ae_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 struct hnae3_ae_dev* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct hnae3_ae_dev *ae_dev = FUNC4(pdev);

	if (FUNC3(pdev) && FUNC0(CONFIG_PCI_IOV))
		FUNC2(pdev);

	FUNC1(ae_dev);
	FUNC5(pdev, NULL);
}