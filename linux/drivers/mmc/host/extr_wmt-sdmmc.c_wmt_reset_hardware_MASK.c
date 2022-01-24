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
struct wmt_mci_priv {int /*<<< orphan*/  clk_sdmmc; scalar_t__ sdmmc_base; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int BLKL_GPI_CD ; 
 int BLKL_INT_ENABLE ; 
 int BM_SOFT_RESET ; 
 int CTLR_FIFO_RESET ; 
 int INT0_CD_INT_EN ; 
 int INT0_DI_INT_EN ; 
 int INT1_CMD_RES_TOUT_INT_EN ; 
 int INT1_CMD_RES_TRAN_DONE_INT_EN ; 
 int INT1_DATA_TOUT_INT_EN ; 
 scalar_t__ SDMMC_BLKLEN ; 
 scalar_t__ SDMMC_BUSMODE ; 
 scalar_t__ SDMMC_CTLR ; 
 scalar_t__ SDMMC_DMATIMEOUT ; 
 scalar_t__ SDMMC_INTMASK0 ; 
 scalar_t__ SDMMC_INTMASK1 ; 
 scalar_t__ SDMMC_STS0 ; 
 scalar_t__ SDMMC_STS1 ; 
 scalar_t__ SDMMC_STS2 ; 
 int STS2_DIS_FORCECLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct wmt_mci_priv* FUNC1 (struct mmc_host*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct mmc_host *mmc)
{
	struct wmt_mci_priv *priv;
	u32 reg_tmp;

	priv = FUNC1(mmc);

	/* reset controller */
	reg_tmp = FUNC2(priv->sdmmc_base + SDMMC_BUSMODE);
	FUNC3(reg_tmp | BM_SOFT_RESET, priv->sdmmc_base + SDMMC_BUSMODE);

	/* reset response FIFO */
	reg_tmp = FUNC2(priv->sdmmc_base + SDMMC_CTLR);
	FUNC3(reg_tmp | CTLR_FIFO_RESET, priv->sdmmc_base + SDMMC_CTLR);

	/* enable GPI pin to detect card */
	FUNC4(BLKL_INT_ENABLE | BLKL_GPI_CD, priv->sdmmc_base + SDMMC_BLKLEN);

	/* clear interrupt status */
	FUNC3(0xFF, priv->sdmmc_base + SDMMC_STS0);
	FUNC3(0xFF, priv->sdmmc_base + SDMMC_STS1);

	/* setup interrupts */
	FUNC3(INT0_CD_INT_EN | INT0_DI_INT_EN, priv->sdmmc_base +
	       SDMMC_INTMASK0);
	FUNC3(INT1_DATA_TOUT_INT_EN | INT1_CMD_RES_TRAN_DONE_INT_EN |
	       INT1_CMD_RES_TOUT_INT_EN, priv->sdmmc_base + SDMMC_INTMASK1);

	/* set the DMA timeout */
	FUNC4(8191, priv->sdmmc_base + SDMMC_DMATIMEOUT);

	/* auto clock freezing enable */
	reg_tmp = FUNC2(priv->sdmmc_base + SDMMC_STS2);
	FUNC3(reg_tmp | STS2_DIS_FORCECLK, priv->sdmmc_base + SDMMC_STS2);

	/* set a default clock speed of 400Khz */
	FUNC0(priv->clk_sdmmc, 400000);
}