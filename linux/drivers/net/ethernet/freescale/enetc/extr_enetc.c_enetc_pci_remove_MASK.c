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
struct enetc_hw {int /*<<< orphan*/  reg; } ;
struct enetc_si {struct enetc_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct enetc_si*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct enetc_si* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

void FUNC5(struct pci_dev *pdev)
{
	struct enetc_si *si = FUNC3(pdev);
	struct enetc_hw *hw = &si->hw;

	FUNC1(hw->reg);
	FUNC0(si);
	FUNC4(pdev);
	FUNC2(pdev);
}