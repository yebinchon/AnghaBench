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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct wmt_mci_priv {scalar_t__ sdmmc_base; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int DMA_CCR_IF_TO_PERIPHERAL ; 
 int DMA_CCR_PERIPHERAL_TO_IF ; 
 int DMA_IER_INT_EN ; 
 scalar_t__ PDMA_WRITE ; 
 scalar_t__ SDDMA_CCR ; 
 scalar_t__ SDDMA_DESPR ; 
 scalar_t__ SDDMA_IER ; 
 struct wmt_mci_priv* FUNC0 (struct mmc_host*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *mmc, u32 descaddr, u8 dir)
{
	struct wmt_mci_priv *priv;
	u32 reg_tmp;

	priv = FUNC0(mmc);

	/* Enable DMA Interrupts */
	FUNC2(DMA_IER_INT_EN, priv->sdmmc_base + SDDMA_IER);

	/* Write DMA Descriptor Pointer Register */
	FUNC2(descaddr, priv->sdmmc_base + SDDMA_DESPR);

	FUNC2(0x00, priv->sdmmc_base + SDDMA_CCR);

	if (dir == PDMA_WRITE) {
		reg_tmp = FUNC1(priv->sdmmc_base + SDDMA_CCR);
		FUNC2(reg_tmp & DMA_CCR_IF_TO_PERIPHERAL, priv->sdmmc_base +
		       SDDMA_CCR);
	} else {
		reg_tmp = FUNC1(priv->sdmmc_base + SDDMA_CCR);
		FUNC2(reg_tmp | DMA_CCR_PERIPHERAL_TO_IF, priv->sdmmc_base +
		       SDDMA_CCR);
	}
}