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
struct ql3_adapter {int /*<<< orphan*/  mem_map_registers; int /*<<< orphan*/ * workqueue; int /*<<< orphan*/  tx_timeout_work; int /*<<< orphan*/  reset_work; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ql3_adapter* FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *ndev = FUNC5(pdev);
	struct ql3_adapter *qdev = FUNC4(ndev);

	FUNC8(ndev);

	FUNC7(qdev);

	if (qdev->workqueue) {
		FUNC0(&qdev->reset_work);
		FUNC0(&qdev->tx_timeout_work);
		FUNC1(qdev->workqueue);
		qdev->workqueue = NULL;
	}

	FUNC3(qdev->mem_map_registers);
	FUNC6(pdev);
	FUNC2(ndev);
}