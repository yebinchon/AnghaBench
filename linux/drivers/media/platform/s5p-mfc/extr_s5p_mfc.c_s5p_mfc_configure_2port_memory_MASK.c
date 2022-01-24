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
struct TYPE_4__ {scalar_t__ dma; } ;
struct s5p_mfc_dev {void** mem_dev; scalar_t__* dma_base; TYPE_2__ fw_buf; TYPE_1__* plat_dev; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 size_t BANK_L_CTX ; 
 size_t BANK_R_CTX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MFC_BASE_ALIGN_ORDER ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void*,unsigned long,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned long,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct s5p_mfc_dev*) ; 
 void* FUNC6 (struct device*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct s5p_mfc_dev *mfc_dev)
{
	struct device *dev = &mfc_dev->plat_dev->dev;
	void *bank2_virt;
	dma_addr_t bank2_dma_addr;
	unsigned long align_size = 1 << MFC_BASE_ALIGN_ORDER;
	int ret;

	/*
	 * Create and initialize virtual devices for accessing
	 * reserved memory regions.
	 */
	mfc_dev->mem_dev[BANK_L_CTX] = FUNC6(dev, "left",
							   BANK_L_CTX);
	if (!mfc_dev->mem_dev[BANK_L_CTX])
		return -ENODEV;
	mfc_dev->mem_dev[BANK_R_CTX] = FUNC6(dev, "right",
							   BANK_R_CTX);
	if (!mfc_dev->mem_dev[BANK_R_CTX]) {
		FUNC1(mfc_dev->mem_dev[BANK_L_CTX]);
		return -ENODEV;
	}

	/* Allocate memory for firmware and initialize both banks addresses */
	ret = FUNC5(mfc_dev);
	if (ret) {
		FUNC1(mfc_dev->mem_dev[BANK_R_CTX]);
		FUNC1(mfc_dev->mem_dev[BANK_L_CTX]);
		return ret;
	}

	mfc_dev->dma_base[BANK_L_CTX] = mfc_dev->fw_buf.dma;

	bank2_virt = FUNC2(mfc_dev->mem_dev[BANK_R_CTX],
				       align_size, &bank2_dma_addr, GFP_KERNEL);
	if (!bank2_virt) {
		FUNC4("Allocating bank2 base failed\n");
		FUNC7(mfc_dev);
		FUNC1(mfc_dev->mem_dev[BANK_R_CTX]);
		FUNC1(mfc_dev->mem_dev[BANK_L_CTX]);
		return -ENOMEM;
	}

	/* Valid buffers passed to MFC encoder with LAST_FRAME command
	 * should not have address of bank2 - MFC will treat it as a null frame.
	 * To avoid such situation we set bank2 address below the pool address.
	 */
	mfc_dev->dma_base[BANK_R_CTX] = bank2_dma_addr - align_size;

	FUNC3(mfc_dev->mem_dev[BANK_R_CTX], align_size, bank2_virt,
			  bank2_dma_addr);

	FUNC8(mfc_dev->mem_dev[BANK_L_CTX],
					FUNC0(32));
	FUNC8(mfc_dev->mem_dev[BANK_R_CTX],
					FUNC0(32));

	return 0;
}