#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct be_adapter {int num_msix_roce_vec; int num_msix_vec; TYPE_2__* msix_entries; TYPE_1__* pdev; int /*<<< orphan*/  cfg_num_tx_irqs; int /*<<< orphan*/  cfg_num_rx_irqs; } ;
struct TYPE_4__ {unsigned int entry; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int MIN_MSIX_VECTORS ; 
 unsigned int FUNC0 (struct be_adapter*) ; 
 unsigned int FUNC1 (struct be_adapter*) ; 
 unsigned int FUNC2 (struct be_adapter*) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 scalar_t__ FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (TYPE_1__*,TYPE_2__*,int,int) ; 

__attribute__((used)) static int FUNC11(struct be_adapter *adapter)
{
	unsigned int i, max_roce_eqs;
	struct device *dev = &adapter->pdev->dev;
	int num_vec;

	/* If RoCE is supported, program the max number of vectors that
	 * could be used for NIC and RoCE, else, just program the number
	 * we'll use initially.
	 */
	if (FUNC3(adapter)) {
		max_roce_eqs =
			FUNC1(adapter) - FUNC2(adapter);
		max_roce_eqs = FUNC8(max_roce_eqs, FUNC9());
		num_vec = FUNC0(adapter) + max_roce_eqs;
	} else {
		num_vec = FUNC7(adapter->cfg_num_rx_irqs,
			      adapter->cfg_num_tx_irqs);
	}

	for (i = 0; i < num_vec; i++)
		adapter->msix_entries[i].entry = i;

	num_vec = FUNC10(adapter->pdev, adapter->msix_entries,
					MIN_MSIX_VECTORS, num_vec);
	if (num_vec < 0)
		goto fail;

	if (FUNC3(adapter) && num_vec > MIN_MSIX_VECTORS) {
		adapter->num_msix_roce_vec = num_vec / 2;
		FUNC5(dev, "enabled %d MSI-x vector(s) for RoCE\n",
			 adapter->num_msix_roce_vec);
	}

	adapter->num_msix_vec = num_vec - adapter->num_msix_roce_vec;

	FUNC5(dev, "enabled %d MSI-x vector(s) for NIC\n",
		 adapter->num_msix_vec);
	return 0;

fail:
	FUNC6(dev, "MSIx enable failed\n");

	/* INTx is not supported in VFs, so fail probe if enable_msix fails */
	if (FUNC4(adapter))
		return num_vec;
	return 0;
}