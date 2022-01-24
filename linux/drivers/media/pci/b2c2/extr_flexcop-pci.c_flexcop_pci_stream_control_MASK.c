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
struct flexcop_pci {int /*<<< orphan*/  count; int /*<<< orphan*/  count_prev; scalar_t__ last_dma1_cur_pos; int /*<<< orphan*/ * dma; } ;
struct flexcop_device {struct flexcop_pci* bus_specific; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_DMA_1 ; 
 int /*<<< orphan*/  FC_DMA_2 ; 
 int FC_DMA_SUBADDR_0 ; 
 int FC_DMA_SUBADDR_1 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct flexcop_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct flexcop_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct flexcop_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct flexcop_device*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct flexcop_device *fc, int onoff)
{
	struct flexcop_pci *fc_pci = fc->bus_specific;
	if (onoff) {
		FUNC1(fc, &fc_pci->dma[0], FC_DMA_1);
		FUNC1(fc, &fc_pci->dma[1], FC_DMA_2);
		FUNC2(fc, FC_DMA_1, 0);
		FUNC4(fc, FC_DMA_1,
				FC_DMA_SUBADDR_0 | FC_DMA_SUBADDR_1, 1);
		FUNC0("DMA xfer enabled\n");

		fc_pci->last_dma1_cur_pos = 0;
		FUNC3(fc, FC_DMA_1, 1);
		FUNC0("IRQ enabled\n");
		fc_pci->count_prev = fc_pci->count;
	} else {
		FUNC3(fc, FC_DMA_1, 0);
		FUNC0("IRQ disabled\n");

		FUNC4(fc, FC_DMA_1,
			 FC_DMA_SUBADDR_0 | FC_DMA_SUBADDR_1, 0);
		FUNC0("DMA xfer disabled\n");
	}
	return 0;
}