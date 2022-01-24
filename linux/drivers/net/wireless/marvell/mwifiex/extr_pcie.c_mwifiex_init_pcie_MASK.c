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
struct pcie_service_card {void* pci_mmap; void* pci_mmap1; struct pci_dev* dev; } ;
struct pci_dev {int dummy; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EIO ; 
 int FUNC1 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 
 void* FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 int FUNC7 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct pcie_service_card*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,void*,void*) ; 

__attribute__((used)) static int FUNC14(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card = adapter->card;
	int ret;
	struct pci_dev *pdev = card->dev;

	FUNC10(pdev, card);

	ret = FUNC3(pdev);
	if (ret)
		goto err_enable_dev;

	FUNC11(pdev);

	ret = FUNC9(pdev, FUNC0(32));
	if (ret) {
		FUNC12("set_dma_mask(32) failed: %d\n", ret);
		goto err_set_dma_mask;
	}

	ret = FUNC8(pdev, FUNC0(32));
	if (ret) {
		FUNC12("set_consistent_dma_mask(64) failed\n");
		goto err_set_dma_mask;
	}

	ret = FUNC7(pdev, 0, DRV_NAME);
	if (ret) {
		FUNC12("req_reg(0) error\n");
		goto err_req_region0;
	}
	card->pci_mmap = FUNC4(pdev, 0, 0);
	if (!card->pci_mmap) {
		FUNC12("iomap(0) error\n");
		ret = -EIO;
		goto err_iomap0;
	}
	ret = FUNC7(pdev, 2, DRV_NAME);
	if (ret) {
		FUNC12("req_reg(2) error\n");
		goto err_req_region2;
	}
	card->pci_mmap1 = FUNC4(pdev, 2, 0);
	if (!card->pci_mmap1) {
		FUNC12("iomap(2) error\n");
		ret = -EIO;
		goto err_iomap2;
	}

	FUNC13("PCI memory map Virt0: %pK PCI memory map Virt2: %pK\n",
		  card->pci_mmap, card->pci_mmap1);

	ret = FUNC1(adapter);
	if (ret)
		goto err_alloc_buffers;

	return 0;

err_alloc_buffers:
	FUNC5(pdev, card->pci_mmap1);
err_iomap2:
	FUNC6(pdev, 2);
err_req_region2:
	FUNC5(pdev, card->pci_mmap);
err_iomap0:
	FUNC6(pdev, 0);
err_req_region0:
err_set_dma_mask:
	FUNC2(pdev);
err_enable_dev:
	return ret;
}