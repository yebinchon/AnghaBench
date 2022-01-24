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
struct nicpf {int flags; } ;

/* Variables and functions */
 int NIC_SRIOV_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct nicpf*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct nicpf* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct nicpf *nic = FUNC3(pdev);

	if (!nic)
		return;

	if (nic->flags & NIC_SRIOV_ENABLED)
		FUNC2(pdev);

	FUNC0(nic);
	FUNC4(pdev);

	FUNC1(pdev);
	FUNC5(pdev, NULL);
}