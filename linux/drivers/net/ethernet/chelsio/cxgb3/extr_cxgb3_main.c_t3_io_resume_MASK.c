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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCIE_PEX_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,int /*<<< orphan*/ ) ; 
 struct adapter* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct adapter *adapter = FUNC1(pdev);

	FUNC0(adapter, "adapter recovering, PEX ERR 0x%x\n",
		 FUNC4(adapter, A_PCIE_PEX_ERR));

	FUNC2();
	FUNC5(adapter);
	FUNC3();
}