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
struct msix_entry {int /*<<< orphan*/  vector; } ;
struct iwl_trans_pcie {int alloc_vecs; int def_irq; int /*<<< orphan*/  trans; struct msix_entry* msix_entries; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct msix_entry*) ; 
 int /*<<< orphan*/  iwl_pcie_irq_msix_handler ; 
 int /*<<< orphan*/  iwl_pcie_irq_rx_msix_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iwl_pcie_msix_isr ; 
 char* FUNC3 (int /*<<< orphan*/ *,struct iwl_trans_pcie*,int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pdev,
				      struct iwl_trans_pcie *trans_pcie)
{
	int i;

	for (i = 0; i < trans_pcie->alloc_vecs; i++) {
		int ret;
		struct msix_entry *msix_entry;
		const char *qname = FUNC3(&pdev->dev, trans_pcie, i);

		if (!qname)
			return -ENOMEM;

		msix_entry = &trans_pcie->msix_entries[i];
		ret = FUNC1(&pdev->dev,
						msix_entry->vector,
						iwl_pcie_msix_isr,
						(i == trans_pcie->def_irq) ?
						iwl_pcie_irq_msix_handler :
						iwl_pcie_irq_rx_msix_handler,
						IRQF_SHARED,
						qname,
						msix_entry);
		if (ret) {
			FUNC0(trans_pcie->trans,
				"Error allocating IRQ %d\n", i);

			return ret;
		}
	}
	FUNC2(trans_pcie->trans);

	return 0;
}