#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; TYPE_1__* bus; } ;
struct alcor_pci_priv {int id; int /*<<< orphan*/ * dev; int /*<<< orphan*/  iobase; int /*<<< orphan*/  irq; struct alcor_dev_cfg* cfg; int /*<<< orphan*/  parent_pdev; struct pci_dev* pdev; } ;
struct alcor_dev_cfg {int dummy; } ;
struct TYPE_6__ {int pdata_size; struct alcor_pci_priv* platform_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  self; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  AU6601_MS_INT_ENABLE ; 
 int /*<<< orphan*/  AU6601_REG_INT_ENABLE ; 
 int /*<<< orphan*/  AU6601_SDMA_MASK ; 
 int /*<<< orphan*/  DRV_NAME_ALCOR_PCI ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_pci_priv*,int /*<<< orphan*/ ) ; 
 TYPE_2__* alcor_pci_cells ; 
 int /*<<< orphan*/  alcor_pci_idr ; 
 int /*<<< orphan*/  FUNC2 (struct alcor_pci_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct alcor_pci_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct alcor_pci_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct alcor_pci_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct pci_dev *pdev,
			   const struct pci_device_id *ent)
{
	struct alcor_dev_cfg *cfg;
	struct alcor_pci_priv *priv;
	int ret, i, bar = 0;

	cfg = (void *)ent->driver_data;

	ret = FUNC14(pdev);
	if (ret)
		return ret;

	priv = FUNC5(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	ret = FUNC7(&alcor_pci_idr, 0, 0, GFP_KERNEL);
	if (ret < 0)
		return ret;
	priv->id = ret;

	priv->pdev = pdev;
	priv->parent_pdev = pdev->bus->self;
	priv->dev = &pdev->dev;
	priv->cfg = cfg;
	priv->irq = pdev->irq;

	ret = FUNC10(pdev, DRV_NAME_ALCOR_PCI);
	if (ret) {
		FUNC4(&pdev->dev, "Cannot request region\n");
		return -ENOMEM;
	}

	if (!(FUNC11(pdev, bar) & IORESOURCE_MEM)) {
		FUNC4(&pdev->dev, "BAR %d is not iomem. Aborting.\n", bar);
		ret = -ENODEV;
		goto error_release_regions;
	}

	priv->iobase = FUNC15(pdev, bar, 0);
	if (!priv->iobase) {
		ret = -ENOMEM;
		goto error_release_regions;
	}

	/* make sure irqs are disabled */
	FUNC3(priv, 0, AU6601_REG_INT_ENABLE);
	FUNC3(priv, 0, AU6601_MS_INT_ENABLE);

	ret = FUNC6(priv->dev, AU6601_SDMA_MASK);
	if (ret) {
		FUNC4(priv->dev, "Failed to set DMA mask\n");
		goto error_release_regions;
	}

	FUNC13(pdev);
	FUNC12(pdev, priv);
	FUNC2(priv);

	for (i = 0; i < FUNC0(alcor_pci_cells); i++) {
		alcor_pci_cells[i].platform_data = priv;
		alcor_pci_cells[i].pdata_size = sizeof(*priv);
	}
	ret = FUNC8(&pdev->dev, priv->id, alcor_pci_cells,
			FUNC0(alcor_pci_cells), NULL, 0, NULL);
	if (ret < 0)
		goto error_release_regions;

	FUNC1(priv, 0);

	return 0;

error_release_regions:
	FUNC9(pdev);
	return ret;
}