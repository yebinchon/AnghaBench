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
struct ena_com_dev_get_features_ctx {int dummy; } ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int wd_state; int /*<<< orphan*/  flags; int /*<<< orphan*/  timer_service; int /*<<< orphan*/  netdev; scalar_t__ dev_up_before_reset; int /*<<< orphan*/  num_queues; struct pci_dev* pdev; struct ena_com_dev* ena_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_DEVICE_RUNNING ; 
 int /*<<< orphan*/  ENA_FLAG_LINK_UP ; 
 int /*<<< orphan*/  ENA_FLAG_ONGOING_RESET ; 
 int /*<<< orphan*/  ENA_REGS_RESET_DRIVER_INVALID_STATE ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_com_dev*) ; 
 int FUNC7 (struct ena_com_dev*,struct pci_dev*,struct ena_com_dev_get_features_ctx*,int*) ; 
 int FUNC8 (struct ena_adapter*,struct ena_com_dev_get_features_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ena_adapter*) ; 
 int FUNC10 (struct ena_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ena_adapter*) ; 
 int FUNC12 (struct ena_adapter*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static int FUNC18(struct ena_adapter *adapter)
{
	struct ena_com_dev_get_features_ctx get_feat_ctx;
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	struct pci_dev *pdev = adapter->pdev;
	bool wd_state;
	int rc;

	FUNC16(ENA_FLAG_ONGOING_RESET, &adapter->flags);
	rc = FUNC7(ena_dev, adapter->pdev, &get_feat_ctx, &wd_state);
	if (rc) {
		FUNC1(&pdev->dev, "Can not initialize device\n");
		goto err;
	}
	adapter->wd_state = wd_state;

	rc = FUNC8(adapter, &get_feat_ctx);
	if (rc) {
		FUNC1(&pdev->dev, "Validation of device parameters failed\n");
		goto err_device_destroy;
	}

	rc = FUNC10(adapter,
						      adapter->num_queues);
	if (rc) {
		FUNC1(&pdev->dev, "Enable MSI-X failed\n");
		goto err_device_destroy;
	}
	/* If the interface was up before the reset bring it up */
	if (adapter->dev_up_before_reset) {
		rc = FUNC12(adapter);
		if (rc) {
			FUNC1(&pdev->dev, "Failed to create I/O queues\n");
			goto err_disable_msix;
		}
	}

	FUNC16(ENA_FLAG_DEVICE_RUNNING, &adapter->flags);

	FUNC0(ENA_FLAG_ONGOING_RESET, &adapter->flags);
	if (FUNC17(ENA_FLAG_LINK_UP, &adapter->flags))
		FUNC14(adapter->netdev);

	FUNC13(&adapter->timer_service, FUNC15(jiffies + HZ));
	FUNC1(&pdev->dev,
		"Device reset completed successfully, Driver info: %s\n",
		version);

	return rc;
err_disable_msix:
	FUNC11(adapter);
	FUNC9(adapter);
err_device_destroy:
	FUNC2(ena_dev);
	FUNC6(ena_dev);
	FUNC3(ena_dev);
	FUNC4(ena_dev, ENA_REGS_RESET_DRIVER_INVALID_STATE);
	FUNC5(ena_dev);
err:
	FUNC0(ENA_FLAG_DEVICE_RUNNING, &adapter->flags);
	FUNC0(ENA_FLAG_ONGOING_RESET, &adapter->flags);
	FUNC1(&pdev->dev,
		"Reset attempt failed. Can not reset the device\n");

	return rc;
}