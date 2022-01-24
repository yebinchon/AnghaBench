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
struct sdhci_host {int flags; int /*<<< orphan*/  desc_sz; } ;
struct sdhci_adma2_64_desc {void* addr_hi; void* addr_lo; void* len; void* cmd; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int SDHCI_USE_64_BIT_DMA ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct sdhci_host *host, void **desc,
			   dma_addr_t addr, int len, unsigned int cmd)
{
	struct sdhci_adma2_64_desc *dma_desc = *desc;

	/* 32-bit and 64-bit descriptors have these members in same position */
	dma_desc->cmd = FUNC0(cmd);
	dma_desc->len = FUNC0(len);
	dma_desc->addr_lo = FUNC1(FUNC2(addr));

	if (host->flags & SDHCI_USE_64_BIT_DMA)
		dma_desc->addr_hi = FUNC1(FUNC3(addr));

	*desc += host->desc_sz;
}