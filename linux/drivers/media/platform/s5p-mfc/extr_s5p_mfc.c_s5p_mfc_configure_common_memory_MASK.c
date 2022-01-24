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
struct s5p_mfc_dev {unsigned int mem_base; unsigned long mem_size; unsigned int* dma_base; struct device** mem_dev; int /*<<< orphan*/  mem_bitmap; int /*<<< orphan*/  mem_virt; TYPE_1__* plat_dev; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 size_t BANK_L_CTX ; 
 size_t BANK_R_CTX ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  CONFIG_DMA_CMA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MFC_BASE_ALIGN_ORDER ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long SZ_1M ; 
 unsigned long SZ_4M ; 
 unsigned long SZ_8M ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,unsigned long,unsigned int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ mfc_mem_size ; 
 int /*<<< orphan*/  FUNC11 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct s5p_mfc_dev *mfc_dev)
{
	struct device *dev = &mfc_dev->plat_dev->dev;
	unsigned long mem_size = SZ_4M;
	unsigned int bitmap_size;

	if (FUNC2(CONFIG_DMA_CMA) || FUNC7(dev))
		mem_size = SZ_8M;

	if (mfc_mem_size)
		mem_size = FUNC10(mfc_mem_size, NULL);

	bitmap_size = FUNC0(mem_size >> PAGE_SHIFT) * sizeof(long);

	mfc_dev->mem_bitmap = FUNC9(bitmap_size, GFP_KERNEL);
	if (!mfc_dev->mem_bitmap)
		return -ENOMEM;

	mfc_dev->mem_virt = FUNC6(dev, mem_size,
					       &mfc_dev->mem_base, GFP_KERNEL);
	if (!mfc_dev->mem_virt) {
		FUNC8(mfc_dev->mem_bitmap);
		FUNC4(dev, "failed to preallocate %ld MiB for the firmware and context buffers\n",
			(mem_size / SZ_1M));
		return -ENOMEM;
	}
	mfc_dev->mem_size = mem_size;
	mfc_dev->dma_base[BANK_L_CTX] = mfc_dev->mem_base;
	mfc_dev->dma_base[BANK_R_CTX] = mfc_dev->mem_base;

	/*
	 * MFC hardware cannot handle 0 as a base address, so mark first 128K
	 * as used (to keep required base alignment) and adjust base address
	 */
	if (mfc_dev->mem_base == (dma_addr_t)0) {
		unsigned int offset = 1 << MFC_BASE_ALIGN_ORDER;

		FUNC3(mfc_dev->mem_bitmap, 0, offset >> PAGE_SHIFT);
		mfc_dev->dma_base[BANK_L_CTX] += offset;
		mfc_dev->dma_base[BANK_R_CTX] += offset;
	}

	/* Firmware allocation cannot fail in this case */
	FUNC11(mfc_dev);

	mfc_dev->mem_dev[BANK_L_CTX] = mfc_dev->mem_dev[BANK_R_CTX] = dev;
	FUNC12(dev, FUNC1(32));

	FUNC5(dev, "preallocated %ld MiB buffer for the firmware and context buffers\n",
		 (mem_size / SZ_1M));

	return 0;
}