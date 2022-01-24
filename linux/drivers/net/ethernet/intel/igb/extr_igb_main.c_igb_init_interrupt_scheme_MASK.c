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
struct igb_adapter {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*,int) ; 

__attribute__((used)) static int FUNC5(struct igb_adapter *adapter, bool msix)
{
	struct pci_dev *pdev = adapter->pdev;
	int err;

	FUNC4(adapter, msix);

	err = FUNC1(adapter);
	if (err) {
		FUNC0(&pdev->dev, "Unable to allocate memory for vectors\n");
		goto err_alloc_q_vectors;
	}

	FUNC2(adapter);

	return 0;

err_alloc_q_vectors:
	FUNC3(adapter);
	return err;
}