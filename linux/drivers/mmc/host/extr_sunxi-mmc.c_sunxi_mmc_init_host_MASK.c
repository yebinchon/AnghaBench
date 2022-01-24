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
struct sunxi_mmc_host {int sdio_imask; int sg_dma; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  REG_DBGC ; 
 int /*<<< orphan*/  REG_DLBA ; 
 int /*<<< orphan*/  REG_FTRGL ; 
 int /*<<< orphan*/  REG_FUNS ; 
 int /*<<< orphan*/  REG_GCTRL ; 
 int /*<<< orphan*/  REG_IMASK ; 
 int /*<<< orphan*/  REG_RINTR ; 
 int /*<<< orphan*/  REG_TMOUT ; 
 int SDXC_ACCESS_DONE_DIRECT ; 
 int SDXC_CEATA_ON ; 
 int SDXC_INTERRUPT_ENABLE_BIT ; 
 int FUNC0 (struct sunxi_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sunxi_mmc_host*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct sunxi_mmc_host*) ; 

__attribute__((used)) static int FUNC3(struct sunxi_mmc_host *host)
{
	u32 rval;

	if (FUNC2(host))
		return -EIO;

	/*
	 * Burst 8 transfers, RX trigger level: 7, TX trigger level: 8
	 *
	 * TODO: sun9i has a larger FIFO and supports higher trigger values
	 */
	FUNC1(host, REG_FTRGL, 0x20070008);
	/* Maximum timeout value */
	FUNC1(host, REG_TMOUT, 0xffffffff);
	/* Unmask SDIO interrupt if needed */
	FUNC1(host, REG_IMASK, host->sdio_imask);
	/* Clear all pending interrupts */
	FUNC1(host, REG_RINTR, 0xffffffff);
	/* Debug register? undocumented */
	FUNC1(host, REG_DBGC, 0xdeb);
	/* Enable CEATA support */
	FUNC1(host, REG_FUNS, SDXC_CEATA_ON);
	/* Set DMA descriptor list base address */
	FUNC1(host, REG_DLBA, host->sg_dma);

	rval = FUNC0(host, REG_GCTRL);
	rval |= SDXC_INTERRUPT_ENABLE_BIT;
	/* Undocumented, but found in Allwinner code */
	rval &= ~SDXC_ACCESS_DONE_DIRECT;
	FUNC1(host, REG_GCTRL, rval);

	return 0;
}