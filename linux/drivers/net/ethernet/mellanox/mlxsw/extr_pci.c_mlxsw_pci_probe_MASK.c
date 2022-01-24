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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; TYPE_1__* driver; } ;
struct TYPE_4__ {char const* device_kind; int read_frc_capable; int /*<<< orphan*/ * dev; int /*<<< orphan*/  device_name; } ;
struct mlxsw_pci {int /*<<< orphan*/  hw_addr; TYPE_2__ bus_info; struct pci_device_id const* id; struct pci_dev* pdev; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MLXSW_PCI_BAR0_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_pci*) ; 
 struct mlxsw_pci* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,struct mlxsw_pci*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_pci_bus ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*,char const*) ; 
 scalar_t__ FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,struct mlxsw_pci*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev, const struct pci_device_id *id)
{
	const char *driver_name = pdev->driver->name;
	struct mlxsw_pci *mlxsw_pci;
	int err;

	mlxsw_pci = FUNC5(sizeof(*mlxsw_pci), GFP_KERNEL);
	if (!mlxsw_pci)
		return -ENOMEM;

	err = FUNC8(pdev);
	if (err) {
		FUNC1(&pdev->dev, "pci_enable_device failed\n");
		goto err_pci_enable_device;
	}

	err = FUNC11(pdev, driver_name);
	if (err) {
		FUNC1(&pdev->dev, "pci_request_regions failed\n");
		goto err_pci_request_regions;
	}

	err = FUNC15(pdev, FUNC0(64));
	if (!err) {
		err = FUNC14(pdev, FUNC0(64));
		if (err) {
			FUNC1(&pdev->dev, "pci_set_consistent_dma_mask failed\n");
			goto err_pci_set_dma_mask;
		}
	} else {
		err = FUNC15(pdev, FUNC0(32));
		if (err) {
			FUNC1(&pdev->dev, "pci_set_dma_mask failed\n");
			goto err_pci_set_dma_mask;
		}
	}

	if (FUNC12(pdev, 0) < MLXSW_PCI_BAR0_SIZE) {
		FUNC1(&pdev->dev, "invalid PCI region size\n");
		err = -EINVAL;
		goto err_pci_resource_len_check;
	}

	mlxsw_pci->hw_addr = FUNC2(FUNC13(pdev, 0),
				     FUNC12(pdev, 0));
	if (!mlxsw_pci->hw_addr) {
		FUNC1(&pdev->dev, "ioremap failed\n");
		err = -EIO;
		goto err_ioremap;
	}
	FUNC17(pdev);

	mlxsw_pci->pdev = pdev;
	FUNC16(pdev, mlxsw_pci);

	mlxsw_pci->bus_info.device_kind = driver_name;
	mlxsw_pci->bus_info.device_name = FUNC9(mlxsw_pci->pdev);
	mlxsw_pci->bus_info.dev = &pdev->dev;
	mlxsw_pci->bus_info.read_frc_capable = true;
	mlxsw_pci->id = id;

	err = FUNC6(&mlxsw_pci->bus_info,
					     &mlxsw_pci_bus, mlxsw_pci, false,
					     NULL);
	if (err) {
		FUNC1(&pdev->dev, "cannot register bus device\n");
		goto err_bus_device_register;
	}

	return 0;

err_bus_device_register:
	FUNC3(mlxsw_pci->hw_addr);
err_ioremap:
err_pci_resource_len_check:
err_pci_set_dma_mask:
	FUNC10(pdev);
err_pci_request_regions:
	FUNC7(pdev);
err_pci_enable_device:
	FUNC4(mlxsw_pci);
	return err;
}