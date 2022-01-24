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
struct pci_device_id {int driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mlx5_core_dev {int /*<<< orphan*/  coredev_type; struct pci_dev* pdev; int /*<<< orphan*/ * device; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MLX5_COREDEV_PF ; 
 int /*<<< orphan*/  MLX5_COREDEV_VF ; 
 int /*<<< orphan*/  MLX5_IB_MOD ; 
 int MLX5_PCI_DEV_IS_VF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct mlx5_core_dev* FUNC1 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 struct devlink* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct devlink*) ; 
 int FUNC6 (struct devlink*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mlx5_core_dev*,int) ; 
 int FUNC8 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*) ; 
 int FUNC11 (struct mlx5_core_dev*,struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  prof_sel ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct mlx5_core_dev *dev;
	struct devlink *devlink;
	int err;

	devlink = FUNC4();
	if (!devlink) {
		FUNC0(&pdev->dev, "devlink alloc failed\n");
		return -ENOMEM;
	}

	dev = FUNC1(devlink);
	dev->device = &pdev->dev;
	dev->pdev = pdev;

	dev->coredev_type = id->driver_data & MLX5_PCI_DEV_IS_VF ?
			 MLX5_COREDEV_VF : MLX5_COREDEV_PF;

	err = FUNC8(dev, prof_sel);
	if (err)
		goto mdev_init_err;

	err = FUNC11(dev, pdev, id);
	if (err) {
		FUNC2(dev, "mlx5_pci_init failed with error code %d\n",
			      err);
		goto pci_init_err;
	}

	err = FUNC7(dev, true);
	if (err) {
		FUNC2(dev, "mlx5_load_one failed with error code %d\n",
			      err);
		goto err_load_one;
	}

	FUNC14(MLX5_IB_MOD);

	err = FUNC6(devlink, &pdev->dev);
	if (err)
		goto clean_load;

	err = FUNC3(dev);
	if (err)
		FUNC0(&pdev->dev, "mlx5_crdump_enable failed with error code %d\n", err);

	FUNC13(pdev);
	return 0;

clean_load:
	FUNC12(dev, true);

err_load_one:
	FUNC10(dev);
pci_init_err:
	FUNC9(dev);
mdev_init_err:
	FUNC5(devlink);

	return err;
}