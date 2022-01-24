#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct flexcop_pci {int init_state; TYPE_1__* pdev; int /*<<< orphan*/  io_mem; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int FC_PCI_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flexcop_pci*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct flexcop_pci *fc_pci)
{
	if (fc_pci->init_state & FC_PCI_INIT) {
		FUNC0(fc_pci->pdev->irq, fc_pci);
		FUNC2(fc_pci->pdev, fc_pci->io_mem);
		FUNC3(fc_pci->pdev);
		FUNC1(fc_pci->pdev);
	}
	fc_pci->init_state &= ~FC_PCI_INIT;
}