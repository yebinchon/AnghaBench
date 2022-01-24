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
struct mmc_host {int dummy; } ;
struct dw_mci_slot {int id; struct dw_mci* host; } ;
struct dw_mci {scalar_t__ use_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  RST_N ; 
 int SDMMC_CTRL_DMA_RESET ; 
 int SDMMC_CTRL_FIFO_RESET ; 
 int SDMMC_RST_HWACTIVE ; 
 scalar_t__ TRANS_MODE_IDMAC ; 
 int /*<<< orphan*/  FUNC0 (struct dw_mci*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mci*) ; 
 int FUNC2 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 
 struct dw_mci_slot* FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc)
{
	struct dw_mci_slot *slot = FUNC4(mmc);
	struct dw_mci *host = slot->host;
	int reset;

	if (host->use_dma == TRANS_MODE_IDMAC)
		FUNC1(host);

	if (!FUNC0(host, SDMMC_CTRL_DMA_RESET |
				     SDMMC_CTRL_FIFO_RESET))
		return;

	/*
	 * According to eMMC spec, card reset procedure:
	 * tRstW >= 1us:   RST_n pulse width
	 * tRSCA >= 200us: RST_n to Command time
	 * tRSTH >= 1us:   RST_n high period
	 */
	reset = FUNC2(host, RST_N);
	reset &= ~(SDMMC_RST_HWACTIVE << slot->id);
	FUNC3(host, RST_N, reset);
	FUNC5(1, 2);
	reset |= SDMMC_RST_HWACTIVE << slot->id;
	FUNC3(host, RST_N, reset);
	FUNC5(200, 300);
}