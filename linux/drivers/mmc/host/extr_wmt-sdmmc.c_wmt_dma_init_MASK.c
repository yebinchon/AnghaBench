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
struct wmt_mci_priv {scalar_t__ sdmmc_base; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int DMA_GCR_DMA_EN ; 
 int DMA_GCR_SOFT_RESET ; 
 scalar_t__ SDDMA_GCR ; 
 struct wmt_mci_priv* FUNC0 (struct mmc_host*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *mmc)
{
	struct wmt_mci_priv *priv;

	priv = FUNC0(mmc);

	FUNC2(DMA_GCR_SOFT_RESET, priv->sdmmc_base + SDDMA_GCR);
	FUNC2(DMA_GCR_DMA_EN, priv->sdmmc_base + SDDMA_GCR);
	if ((FUNC1(priv->sdmmc_base + SDDMA_GCR) & DMA_GCR_DMA_EN) != 0)
		return 0;
	else
		return 1;
}