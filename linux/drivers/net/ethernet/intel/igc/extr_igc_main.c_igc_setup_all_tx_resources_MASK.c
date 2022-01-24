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
struct igc_adapter {int num_tx_queues; int /*<<< orphan*/ * tx_ring; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct igc_adapter *adapter)
{
	struct pci_dev *pdev = adapter->pdev;
	int i, err = 0;

	for (i = 0; i < adapter->num_tx_queues; i++) {
		err = FUNC2(adapter->tx_ring[i]);
		if (err) {
			FUNC0(&pdev->dev,
				"Allocation for Tx Queue %u failed\n", i);
			for (i--; i >= 0; i--)
				FUNC1(adapter->tx_ring[i]);
			break;
		}
	}

	return err;
}