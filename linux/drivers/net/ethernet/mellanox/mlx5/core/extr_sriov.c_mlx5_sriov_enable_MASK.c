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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int FUNC2 (struct mlx5_core_dev*,int) ; 
 int FUNC3 (struct pci_dev*,int) ; 
 struct mlx5_core_dev* FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev, int num_vfs)
{
	struct mlx5_core_dev *dev  = FUNC4(pdev);
	int err;

	err = FUNC2(dev, num_vfs);
	if (err) {
		FUNC0(dev, "mlx5_device_enable_sriov failed : %d\n", err);
		return err;
	}

	err = FUNC3(pdev, num_vfs);
	if (err) {
		FUNC0(dev, "pci_enable_sriov failed : %d\n", err);
		FUNC1(dev);
	}
	return err;
}