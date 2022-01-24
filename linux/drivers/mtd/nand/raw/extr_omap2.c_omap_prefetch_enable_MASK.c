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
struct TYPE_2__ {int /*<<< orphan*/  gpmc_prefetch_control; int /*<<< orphan*/  gpmc_prefetch_config1; int /*<<< orphan*/  gpmc_prefetch_config2; } ;
struct omap_nand_info {TYPE_1__ reg; } ;

/* Variables and functions */
 int DMA_MPU_MODE_SHIFT ; 
 int EBUSY ; 
 int ENABLE_PREFETCH ; 
 int PREFETCH_CONFIG1_CS_SHIFT ; 
 int FUNC0 (int) ; 
 int PREFETCH_FIFOTHRESHOLD_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int cs, int fifo_th, int dma_mode,
	unsigned int u32_count, int is_write, struct omap_nand_info *info)
{
	u32 val;

	if (fifo_th > PREFETCH_FIFOTHRESHOLD_MAX)
		return -1;

	if (FUNC1(info->reg.gpmc_prefetch_control))
		return -EBUSY;

	/* Set the amount of bytes to be prefetched */
	FUNC2(u32_count, info->reg.gpmc_prefetch_config2);

	/* Set dma/mpu mode, the prefetch read / post write and
	 * enable the engine. Set which cs is has requested for.
	 */
	val = ((cs << PREFETCH_CONFIG1_CS_SHIFT) |
		FUNC0(fifo_th) | ENABLE_PREFETCH |
		(dma_mode << DMA_MPU_MODE_SHIFT) | (is_write & 0x1));
	FUNC2(val, info->reg.gpmc_prefetch_config1);

	/*  Start the prefetch engine */
	FUNC2(0x1, info->reg.gpmc_prefetch_control);

	return 0;
}