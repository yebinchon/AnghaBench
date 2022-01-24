#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct device {int dummy; } ;
struct pci_dev {int revision; struct device dev; } ;
struct TYPE_2__ {int supported_groups; } ;
struct ena_com_dev_get_features_ctx {TYPE_1__ aenq; } ;
struct ena_com_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ENA_ADMIN_FATAL_ERROR ; 
 int /*<<< orphan*/  ENA_ADMIN_KEEP_ALIVE ; 
 int /*<<< orphan*/  ENA_ADMIN_LINK_CHANGE ; 
 int /*<<< orphan*/  ENA_ADMIN_NOTIFICATION ; 
 int /*<<< orphan*/  ENA_ADMIN_WARNING ; 
 int ENA_MMIO_DISABLE_REG_READ ; 
 int /*<<< orphan*/  ENA_REGS_RESET_NORMAL ; 
 int /*<<< orphan*/  aenq_handlers ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_com_dev*) ; 
 int FUNC4 (struct ena_com_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_com_dev*) ; 
 int FUNC6 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ena_com_dev*,struct ena_com_dev_get_features_ctx*) ; 
 int FUNC8 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct ena_com_dev*) ; 
 int FUNC10 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct ena_com_dev*,int) ; 
 int FUNC12 (struct ena_com_dev*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ena_com_dev*,int) ; 
 int FUNC14 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct ena_com_dev*,struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct ena_com_dev *ena_dev, struct pci_dev *pdev,
			   struct ena_com_dev_get_features_ctx *get_feat_ctx,
			   bool *wd_state)
{
	struct device *dev = &pdev->dev;
	bool readless_supported;
	u32 aenq_groups;
	int dma_width;
	int rc;

	rc = FUNC10(ena_dev);
	if (rc) {
		FUNC2(dev, "failed to init mmio read less\n");
		return rc;
	}

	/* The PCIe configuration space revision id indicate if mmio reg
	 * read is disabled
	 */
	readless_supported = !(pdev->revision & ENA_MMIO_DISABLE_REG_READ);
	FUNC13(ena_dev, readless_supported);

	rc = FUNC6(ena_dev, ENA_REGS_RESET_NORMAL);
	if (rc) {
		FUNC2(dev, "Can not reset device\n");
		goto err_mmio_read_less;
	}

	rc = FUNC14(ena_dev);
	if (rc) {
		FUNC2(dev, "device version is too low\n");
		goto err_mmio_read_less;
	}

	dma_width = FUNC8(ena_dev);
	if (dma_width < 0) {
		FUNC2(dev, "Invalid dma width value %d", dma_width);
		rc = dma_width;
		goto err_mmio_read_less;
	}

	rc = FUNC17(pdev, FUNC1(dma_width));
	if (rc) {
		FUNC2(dev, "pci_set_dma_mask failed 0x%x\n", rc);
		goto err_mmio_read_less;
	}

	rc = FUNC16(pdev, FUNC1(dma_width));
	if (rc) {
		FUNC2(dev, "err_pci_set_consistent_dma_mask failed 0x%x\n",
			rc);
		goto err_mmio_read_less;
	}

	/* ENA admin level init */
	rc = FUNC4(ena_dev, &aenq_handlers);
	if (rc) {
		FUNC2(dev,
			"Can not initialize ena admin queue with device\n");
		goto err_mmio_read_less;
	}

	/* To enable the msix interrupts the driver needs to know the number
	 * of queues. So the driver uses polling mode to retrieve this
	 * information
	 */
	FUNC11(ena_dev, true);

	FUNC15(ena_dev, pdev);

	/* Get Device Attributes*/
	rc = FUNC7(ena_dev, get_feat_ctx);
	if (rc) {
		FUNC2(dev, "Cannot get attribute for ena device rc=%d\n", rc);
		goto err_admin_init;
	}

	/* Try to turn all the available aenq groups */
	aenq_groups = FUNC0(ENA_ADMIN_LINK_CHANGE) |
		FUNC0(ENA_ADMIN_FATAL_ERROR) |
		FUNC0(ENA_ADMIN_WARNING) |
		FUNC0(ENA_ADMIN_NOTIFICATION) |
		FUNC0(ENA_ADMIN_KEEP_ALIVE);

	aenq_groups &= get_feat_ctx->aenq.supported_groups;

	rc = FUNC12(ena_dev, aenq_groups);
	if (rc) {
		FUNC2(dev, "Cannot configure aenq groups rc= %d\n", rc);
		goto err_admin_init;
	}

	*wd_state = !!(aenq_groups & FUNC0(ENA_ADMIN_KEEP_ALIVE));

	return 0;

err_admin_init:
	FUNC5(ena_dev);
	FUNC3(ena_dev);
err_mmio_read_less:
	FUNC9(ena_dev);

	return rc;
}