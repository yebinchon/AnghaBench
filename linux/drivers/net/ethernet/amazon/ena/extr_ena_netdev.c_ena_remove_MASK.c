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
struct net_device {int /*<<< orphan*/ * rx_cpu_rmap; } ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int msix_vecs; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  timer_service; struct net_device* netdev; struct ena_com_dev* ena_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_com_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 struct ena_adapter* FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ena_com_dev*) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
	struct ena_adapter *adapter = FUNC10(pdev);
	struct ena_com_dev *ena_dev;
	struct net_device *netdev;

	ena_dev = adapter->ena_dev;
	netdev = adapter->netdev;

#ifdef CONFIG_RFS_ACCEL
	if ((adapter->msix_vecs >= 1) && (netdev->rx_cpu_rmap)) {
		free_irq_cpu_rmap(netdev->rx_cpu_rmap);
		netdev->rx_cpu_rmap = NULL;
	}
#endif /* CONFIG_RFS_ACCEL */
	FUNC1(&adapter->timer_service);

	FUNC0(&adapter->reset_task);

	FUNC11();
	FUNC5(adapter, true);
	FUNC12();

	FUNC13(netdev);

	FUNC8(netdev);

	FUNC4(ena_dev);

	FUNC2(ena_dev);

	FUNC3(ena_dev);

	FUNC6(ena_dev, pdev);

	FUNC9(pdev);

	FUNC14(ena_dev);
}