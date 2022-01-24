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
struct ath10k_pci {int /*<<< orphan*/  mem; int /*<<< orphan*/  mem_len; struct pci_dev* pdev; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int BAR_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int,...) ; 
 struct ath10k_pci* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 
 int FUNC9 (struct pci_dev*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct ath10k*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC15(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC3(ar);
	struct pci_dev *pdev = ar_pci->pdev;
	int ret;

	FUNC13(pdev, ar);

	ret = FUNC6(pdev);
	if (ret) {
		FUNC2(ar, "failed to enable pci device: %d\n", ret);
		return ret;
	}

	ret = FUNC9(pdev, BAR_NUM, "ath");
	if (ret) {
		FUNC2(ar, "failed to request region BAR%d: %d\n", BAR_NUM,
			   ret);
		goto err_device;
	}

	/* Target expects 32 bit DMA. Enforce it. */
	ret = FUNC12(pdev, FUNC0(32));
	if (ret) {
		FUNC2(ar, "failed to set dma mask to 32-bit: %d\n", ret);
		goto err_region;
	}

	ret = FUNC11(pdev, FUNC0(32));
	if (ret) {
		FUNC2(ar, "failed to set consistent dma mask to 32-bit: %d\n",
			   ret);
		goto err_region;
	}

	FUNC14(pdev);

	/* Arrange for access to Target SoC registers. */
	ar_pci->mem_len = FUNC10(pdev, BAR_NUM);
	ar_pci->mem = FUNC7(pdev, BAR_NUM, 0);
	if (!ar_pci->mem) {
		FUNC2(ar, "failed to iomap BAR%d\n", BAR_NUM);
		ret = -EIO;
		goto err_master;
	}

	FUNC1(ar, ATH10K_DBG_BOOT, "boot pci_mem 0x%pK\n", ar_pci->mem);
	return 0;

err_master:
	FUNC4(pdev);

err_region:
	FUNC8(pdev, BAR_NUM);

err_device:
	FUNC5(pdev);

	return ret;
}