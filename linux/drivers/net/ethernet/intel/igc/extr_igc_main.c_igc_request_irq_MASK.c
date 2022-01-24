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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct igc_adapter {int flags; int /*<<< orphan*/ * q_vector; struct pci_dev* pdev; struct net_device* netdev; } ;

/* Variables and functions */
 int IGC_FLAG_HAS_MSI ; 
 int IGC_FLAG_HAS_MSIX ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct igc_adapter*) ; 
 int FUNC6 (struct igc_adapter*,int) ; 
 int /*<<< orphan*/  igc_intr ; 
 int /*<<< orphan*/  igc_intr_msi ; 
 int FUNC7 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct igc_adapter*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct igc_adapter*) ; 

__attribute__((used)) static int FUNC12(struct igc_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;
	int err = 0;

	if (adapter->flags & IGC_FLAG_HAS_MSIX) {
		err = FUNC7(adapter);
		if (!err)
			goto request_done;
		/* fall back to MSI */
		FUNC5(adapter);
		FUNC4(adapter);

		FUNC2(adapter);
		err = FUNC6(adapter, false);
		if (err)
			goto request_done;
		FUNC10(adapter);
		FUNC9(adapter);
		FUNC3(adapter);
	}

	FUNC1(adapter->q_vector[0], 0);

	if (adapter->flags & IGC_FLAG_HAS_MSI) {
		err = FUNC11(pdev->irq, &igc_intr_msi, 0,
				  netdev->name, adapter);
		if (!err)
			goto request_done;

		/* fall back to legacy interrupts */
		FUNC8(adapter);
		adapter->flags &= ~IGC_FLAG_HAS_MSI;
	}

	err = FUNC11(pdev->irq, &igc_intr, IRQF_SHARED,
			  netdev->name, adapter);

	if (err)
		FUNC0(&pdev->dev, "Error %d getting interrupt\n",
			err);

request_done:
	return err;
}