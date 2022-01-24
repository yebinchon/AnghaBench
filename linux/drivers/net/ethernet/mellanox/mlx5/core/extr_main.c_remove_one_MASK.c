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
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC7 (struct mlx5_core_dev*,int) ; 
 struct mlx5_core_dev* FUNC8 (struct pci_dev*) ; 
 struct devlink* FUNC9 (struct mlx5_core_dev*) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	struct mlx5_core_dev *dev  = FUNC8(pdev);
	struct devlink *devlink = FUNC9(dev);

	FUNC1(dev);
	FUNC3(devlink);

	if (FUNC7(dev, true)) {
		FUNC0(dev, "mlx5_unload_one failed\n");
		FUNC4(dev);
		return;
	}

	FUNC6(dev);
	FUNC5(dev);
	FUNC2(devlink);
}