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
struct denali_controller {int caps; int /*<<< orphan*/  dev; scalar_t__ reg; int /*<<< orphan*/  (* setup_dma ) (struct denali_controller*,int /*<<< orphan*/ ,int,int) ;} ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int DENALI_CAP_HW_ECC_FIXUP ; 
 scalar_t__ DMA_ENABLE ; 
 int /*<<< orphan*/  DMA_ENABLE__FLAG ; 
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int EBADMSG ; 
 int EIO ; 
 int INTR__DMA_CMD_COMP ; 
 int INTR__ECC_ERR ; 
 int INTR__ECC_UNCOR_ERR ; 
 int INTR__ERASED_PAGE ; 
 int INTR__PROGRAM_FAIL ; 
 int FUNC0 (struct denali_controller*,void*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct denali_controller*) ; 
 int FUNC2 (struct denali_controller*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,size_t,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct denali_controller*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC11(struct denali_controller *denali, void *buf,
			   size_t size, int page, bool write)
{
	dma_addr_t dma_addr;
	u32 irq_mask, irq_status, ecc_err_mask;
	enum dma_data_direction dir = write ? DMA_TO_DEVICE : DMA_FROM_DEVICE;
	int ret = 0;

	dma_addr = FUNC4(denali->dev, buf, size, dir);
	if (FUNC5(denali->dev, dma_addr)) {
		FUNC3(denali->dev, "Failed to DMA-map buffer. Trying PIO.\n");
		return FUNC0(denali, buf, size, page, write);
	}

	if (write) {
		/*
		 * INTR__PROGRAM_COMP is never asserted for the DMA transfer.
		 * We can use INTR__DMA_CMD_COMP instead.  This flag is asserted
		 * when the page program is completed.
		 */
		irq_mask = INTR__DMA_CMD_COMP | INTR__PROGRAM_FAIL;
		ecc_err_mask = 0;
	} else if (denali->caps & DENALI_CAP_HW_ECC_FIXUP) {
		irq_mask = INTR__DMA_CMD_COMP;
		ecc_err_mask = INTR__ECC_UNCOR_ERR;
	} else {
		irq_mask = INTR__DMA_CMD_COMP;
		ecc_err_mask = INTR__ECC_ERR;
	}

	FUNC8(DMA_ENABLE__FLAG, denali->reg + DMA_ENABLE);
	/*
	 * The ->setup_dma() hook kicks DMA by using the data/command
	 * interface, which belongs to a different AXI port from the
	 * register interface.  Read back the register to avoid a race.
	 */
	FUNC7(denali->reg + DMA_ENABLE);

	FUNC1(denali);
	denali->setup_dma(denali, dma_addr, page, write);

	irq_status = FUNC2(denali, irq_mask);
	if (!(irq_status & INTR__DMA_CMD_COMP))
		ret = -EIO;
	else if (irq_status & ecc_err_mask)
		ret = -EBADMSG;

	FUNC8(0, denali->reg + DMA_ENABLE);

	FUNC6(denali->dev, dma_addr, size, dir);

	if (irq_status & INTR__ERASED_PAGE)
		FUNC9(buf, 0xff, size);

	return ret;
}