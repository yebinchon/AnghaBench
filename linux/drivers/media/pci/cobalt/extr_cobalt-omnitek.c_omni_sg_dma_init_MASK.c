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
struct cobalt {int dma_channels; int pci_32_bit; scalar_t__ first_fifo_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT ; 
 int /*<<< orphan*/  CAPABILITY_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_TYPE_FIFO ; 
 int DONE ; 
 int PCI_64BIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cobalt*) ; 

int FUNC4(struct cobalt *cobalt)
{
	u32 capa = FUNC1(CAPABILITY_REGISTER);
	int i;

	cobalt->first_fifo_channel = 0;
	cobalt->dma_channels = capa & 0xf;
	if (capa & PCI_64BIT)
		cobalt->pci_32_bit = false;
	else
		cobalt->pci_32_bit = true;

	for (i = 0; i < cobalt->dma_channels; i++) {
		u32 status = FUNC1(FUNC0(i));
		u32 ctrl = FUNC1(FUNC0(i));

		if (!(ctrl & DONE))
			FUNC2(ABORT, FUNC0(i));

		if (!(status & DMA_TYPE_FIFO))
			cobalt->first_fifo_channel++;
	}
	FUNC3(cobalt);
	return 0;
}