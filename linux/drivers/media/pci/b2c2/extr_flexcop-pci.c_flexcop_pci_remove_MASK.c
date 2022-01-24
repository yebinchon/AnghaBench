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
struct flexcop_pci {int /*<<< orphan*/  fc_dev; int /*<<< orphan*/  irq_check_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct flexcop_pci*) ; 
 int /*<<< orphan*/  FUNC4 (struct flexcop_pci*) ; 
 scalar_t__ irq_chk_intv ; 
 struct flexcop_pci* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct flexcop_pci *fc_pci = FUNC5(pdev);

	if (irq_chk_intv > 0)
		FUNC0(&fc_pci->irq_check_work);

	FUNC3(fc_pci);
	FUNC1(fc_pci->fc_dev);
	FUNC4(fc_pci);
	FUNC2(fc_pci->fc_dev);
}