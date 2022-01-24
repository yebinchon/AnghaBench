#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int num_res; int size_data; struct platform_device* pclk; struct platform_device* hclk; int /*<<< orphan*/  dma_mask; struct resource* data; struct resource* res; int /*<<< orphan*/  id; void* name; int /*<<< orphan*/  fwnode; TYPE_1__* parent; int /*<<< orphan*/  start; int /*<<< orphan*/  flags; int /*<<< orphan*/  end; } ;
struct platform_device_info {int num_res; int size_data; struct platform_device* pclk; struct platform_device* hclk; int /*<<< orphan*/  dma_mask; struct platform_device_info* data; struct platform_device_info* res; int /*<<< orphan*/  id; void* name; int /*<<< orphan*/  fwnode; TYPE_1__* parent; int /*<<< orphan*/  start; int /*<<< orphan*/  flags; int /*<<< orphan*/  end; } ;
struct platform_device {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fwnode; } ;
struct pci_dev {int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  devfn; TYPE_1__ dev; } ;
struct macb_platform_data {int num_res; int size_data; struct platform_device* pclk; struct platform_device* hclk; int /*<<< orphan*/  dma_mask; struct macb_platform_data* data; struct macb_platform_data* res; int /*<<< orphan*/  id; void* name; int /*<<< orphan*/  fwnode; TYPE_1__* parent; int /*<<< orphan*/  start; int /*<<< orphan*/  flags; int /*<<< orphan*/  end; } ;
typedef  int /*<<< orphan*/  plat_info ;
typedef  int /*<<< orphan*/  plat_data ;

/* Variables and functions */
 int FUNC0 (struct resource*) ; 
 int /*<<< orphan*/  GEM_HCLK_RATE ; 
 int /*<<< orphan*/  GEM_PCLK_RATE ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 void* PCI_DRIVER_NAME ; 
 void* PLAT_DRIVER_NAME ; 
 int FUNC2 (struct platform_device*) ; 
 void* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 struct platform_device* FUNC14 (struct resource*) ; 

__attribute__((used)) static int FUNC15(struct pci_dev *pdev, const struct pci_device_id *id)
{
	int err;
	struct platform_device *plat_dev;
	struct platform_device_info plat_info;
	struct macb_platform_data plat_data;
	struct resource res[2];

	/* enable pci device */
	err = FUNC13(pdev);
	if (err < 0) {
		FUNC5(&pdev->dev, "Enabling PCI device has failed: %d", err);
		return err;
	}

	FUNC12(pdev);

	/* set up resources */
	FUNC7(res, 0x00, sizeof(struct resource) * FUNC0(res));
	res[0].start = FUNC10(pdev, 0);
	res[0].end = FUNC9(pdev, 0);
	res[0].name = PCI_DRIVER_NAME;
	res[0].flags = IORESOURCE_MEM;
	res[1].start = FUNC8(pdev, 0);
	res[1].name = PCI_DRIVER_NAME;
	res[1].flags = IORESOURCE_IRQ;

	FUNC6(&pdev->dev, "EMAC physical base addr: %pa\n",
		 &res[0].start);

	/* set up macb platform data */
	FUNC7(&plat_data, 0, sizeof(plat_data));

	/* initialize clocks */
	plat_data.pclk = FUNC3(&pdev->dev, "pclk", NULL, 0,
						 GEM_PCLK_RATE);
	if (FUNC1(plat_data.pclk)) {
		err = FUNC2(plat_data.pclk);
		goto err_pclk_register;
	}

	plat_data.hclk = FUNC3(&pdev->dev, "hclk", NULL, 0,
						 GEM_HCLK_RATE);
	if (FUNC1(plat_data.hclk)) {
		err = FUNC2(plat_data.hclk);
		goto err_hclk_register;
	}

	/* set up platform device info */
	FUNC7(&plat_info, 0, sizeof(plat_info));
	plat_info.parent = &pdev->dev;
	plat_info.fwnode = pdev->dev.fwnode;
	plat_info.name = PLAT_DRIVER_NAME;
	plat_info.id = pdev->devfn;
	plat_info.res = res;
	plat_info.num_res = FUNC0(res);
	plat_info.data = &plat_data;
	plat_info.size_data = sizeof(plat_data);
	plat_info.dma_mask = pdev->dma_mask;

	/* register platform device */
	plat_dev = FUNC14(&plat_info);
	if (FUNC1(plat_dev)) {
		err = FUNC2(plat_dev);
		goto err_plat_dev_register;
	}

	FUNC11(pdev, plat_dev);

	return 0;

err_plat_dev_register:
	FUNC4(plat_data.hclk);

err_hclk_register:
	FUNC4(plat_data.pclk);

err_pclk_register:
	return err;
}