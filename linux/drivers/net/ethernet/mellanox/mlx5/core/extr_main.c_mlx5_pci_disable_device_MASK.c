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
struct mlx5_core_dev {scalar_t__ pci_status; int /*<<< orphan*/  pci_status_mutex; struct pci_dev* pdev; } ;

/* Variables and functions */
 scalar_t__ MLX5_PCI_STATUS_DISABLED ; 
 scalar_t__ MLX5_PCI_STATUS_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct mlx5_core_dev *dev)
{
	struct pci_dev *pdev = dev->pdev;

	FUNC0(&dev->pci_status_mutex);
	if (dev->pci_status == MLX5_PCI_STATUS_ENABLED) {
		FUNC2(pdev);
		dev->pci_status = MLX5_PCI_STATUS_DISABLED;
	}
	FUNC1(&dev->pci_status_mutex);
}