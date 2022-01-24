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
struct gpmi_nand_data {int /*<<< orphan*/ ** dma_chans; } ;

/* Variables and functions */
 unsigned int DMA_CHANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct gpmi_nand_data *this)
{
	unsigned int i;
	for (i = 0; i < DMA_CHANS; i++)
		if (this->dma_chans[i]) {
			FUNC0(this->dma_chans[i]);
			this->dma_chans[i] = NULL;
		}
}