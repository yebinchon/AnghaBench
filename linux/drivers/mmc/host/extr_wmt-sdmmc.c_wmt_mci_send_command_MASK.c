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
typedef  int u8 ;
typedef  int u32 ;
struct wmt_mci_priv {scalar_t__ sdmmc_base; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int CTLR_FIFO_RESET ; 
 scalar_t__ SDMMC_ARG ; 
 scalar_t__ SDMMC_CMD ; 
 scalar_t__ SDMMC_CTLR ; 
 scalar_t__ SDMMC_RSPTYPE ; 
 scalar_t__ SDMMC_STS0 ; 
 scalar_t__ SDMMC_STS1 ; 
 scalar_t__ SDMMC_STS2 ; 
 scalar_t__ SDMMC_STS3 ; 
 int /*<<< orphan*/  WMT_SD_POWER_ON ; 
 struct wmt_mci_priv* FUNC0 (struct mmc_host*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wmt_mci_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct mmc_host *mmc, u8 command, u8 cmdtype,
				u32 arg, u8 rsptype)
{
	struct wmt_mci_priv *priv;
	u32 reg_tmp;

	priv = FUNC0(mmc);

	/* write command, arg, resptype registers */
	FUNC3(command, priv->sdmmc_base + SDMMC_CMD);
	FUNC4(arg, priv->sdmmc_base + SDMMC_ARG);
	FUNC3(rsptype, priv->sdmmc_base + SDMMC_RSPTYPE);

	/* reset response FIFO */
	reg_tmp = FUNC1(priv->sdmmc_base + SDMMC_CTLR);
	FUNC3(reg_tmp | CTLR_FIFO_RESET, priv->sdmmc_base + SDMMC_CTLR);

	/* ensure clock enabled - VT3465 */
	FUNC2(priv, WMT_SD_POWER_ON);

	/* clear status bits */
	FUNC3(0xFF, priv->sdmmc_base + SDMMC_STS0);
	FUNC3(0xFF, priv->sdmmc_base + SDMMC_STS1);
	FUNC3(0xFF, priv->sdmmc_base + SDMMC_STS2);
	FUNC3(0xFF, priv->sdmmc_base + SDMMC_STS3);

	/* set command type */
	reg_tmp = FUNC1(priv->sdmmc_base + SDMMC_CTLR);
	FUNC3((reg_tmp & 0x0F) | (cmdtype << 4),
	       priv->sdmmc_base + SDMMC_CTLR);

	return 0;
}