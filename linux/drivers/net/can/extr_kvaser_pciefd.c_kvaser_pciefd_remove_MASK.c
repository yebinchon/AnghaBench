#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct kvaser_pciefd {scalar_t__ reg_base; TYPE_1__* pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ KVASER_PCIEFD_IEN_REG ; 
 int /*<<< orphan*/  KVASER_PCIEFD_IRQ_ALL_MSK ; 
 scalar_t__ KVASER_PCIEFD_IRQ_REG ; 
 scalar_t__ KVASER_PCIEFD_SRB_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kvaser_pciefd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct kvaser_pciefd*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct kvaser_pciefd* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct kvaser_pciefd *pcie = FUNC5(pdev);

	FUNC2(pcie);

	/* Turn off IRQ generation */
	FUNC1(0, pcie->reg_base + KVASER_PCIEFD_SRB_CTRL_REG);
	FUNC1(KVASER_PCIEFD_IRQ_ALL_MSK,
		  pcie->reg_base + KVASER_PCIEFD_IRQ_REG);
	FUNC1(0, pcie->reg_base + KVASER_PCIEFD_IEN_REG);

	FUNC0(pcie->pci->irq, pcie);

	FUNC3(pdev);
	FUNC6(pdev, pcie->reg_base);
	FUNC7(pdev);
	FUNC4(pdev);
}