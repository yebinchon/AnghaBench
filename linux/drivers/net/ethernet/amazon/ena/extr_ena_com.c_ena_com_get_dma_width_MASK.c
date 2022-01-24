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
typedef  int u32 ;
struct ena_com_dev {int dma_addr_bits; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENA_MAX_PHYS_ADDR_SIZE_BITS ; 
 int ENA_MMIO_READ_TIMEOUT ; 
 int ENA_REGS_CAPS_DMA_ADDR_WIDTH_MASK ; 
 int ENA_REGS_CAPS_DMA_ADDR_WIDTH_SHIFT ; 
 int /*<<< orphan*/  ENA_REGS_CAPS_OFF ; 
 int ETIME ; 
 int FUNC0 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct ena_com_dev *ena_dev)
{
	u32 caps = FUNC0(ena_dev, ENA_REGS_CAPS_OFF);
	int width;

	if (FUNC3(caps == ENA_MMIO_READ_TIMEOUT)) {
		FUNC2("Reg read timeout occurred\n");
		return -ETIME;
	}

	width = (caps & ENA_REGS_CAPS_DMA_ADDR_WIDTH_MASK) >>
		ENA_REGS_CAPS_DMA_ADDR_WIDTH_SHIFT;

	FUNC1("ENA dma width: %d\n", width);

	if ((width < 32) || width > ENA_MAX_PHYS_ADDR_SIZE_BITS) {
		FUNC2("DMA width illegal value: %d\n", width);
		return -EINVAL;
	}

	ena_dev->dma_addr_bits = width;

	return width;
}