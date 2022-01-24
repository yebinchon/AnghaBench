#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tmio_mmc_host {int sg_off; TYPE_1__* sg_ptr; scalar_t__ dma_on; struct mmc_data* data; } ;
struct mmc_data {unsigned int blksz; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {unsigned int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (TYPE_1__*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned long*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct tmio_mmc_host*,unsigned short*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct tmio_mmc_host *host)
{
	struct mmc_data *data = host->data;
	void *sg_virt;
	unsigned short *buf;
	unsigned int count;
	unsigned long flags;

	if (host->dma_on) {
		FUNC1("PIO IRQ in DMA mode!\n");
		return;
	} else if (!data) {
		FUNC0("Spurious PIO IRQ\n");
		return;
	}

	sg_virt = FUNC2(host->sg_ptr, &flags);
	buf = (unsigned short *)(sg_virt + host->sg_off);

	count = host->sg_ptr->length - host->sg_off;
	if (count > data->blksz)
		count = data->blksz;

	FUNC0("count: %08x offset: %08x flags %08x\n",
		 count, host->sg_off, data->flags);

	/* Transfer the data */
	FUNC5(host, buf, count);

	host->sg_off += count;

	FUNC3(host->sg_ptr, &flags, sg_virt);

	if (host->sg_off == host->sg_ptr->length)
		FUNC4(host);
}