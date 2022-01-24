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
struct alcor_sdmmc_host {struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {struct alcor_dev_cfg* cfg; } ;
struct alcor_dev_cfg {int dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU6601_ACTIVE_CTRL ; 
 int AU6601_DETECT_EN ; 
 int /*<<< orphan*/  AU6601_DETECT_STATUS ; 
 int /*<<< orphan*/  AU6601_DMA_BOUNDARY ; 
 int /*<<< orphan*/  AU6601_INTERFACE_MODE_CTRL ; 
 int /*<<< orphan*/  AU6601_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  AU6601_PAD_DRIVE0 ; 
 int /*<<< orphan*/  AU6601_PAD_DRIVE1 ; 
 int /*<<< orphan*/  AU6601_PAD_DRIVE2 ; 
 int /*<<< orphan*/  AU6601_POWER_CONTROL ; 
 int /*<<< orphan*/  AU6601_REG_BUS_CTRL ; 
 int /*<<< orphan*/  AU6601_RESET_CMD ; 
 int /*<<< orphan*/  AU6601_RESET_DATA ; 
 int AU6601_SD_CARD ; 
 int /*<<< orphan*/  FUNC0 (struct alcor_sdmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct alcor_pci_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct alcor_sdmmc_host *host)
{
	struct alcor_pci_priv *priv = host->alcor_pci;
	struct alcor_dev_cfg *cfg = priv->cfg;

	/* FIXME: This part is a mimics HW init of original driver.
	 * If we will ever get access to documentation, then this part
	 * should be reviewed again.
	 */

	/* reset command state engine */
	FUNC0(host, AU6601_RESET_CMD);

	FUNC2(priv, 0, AU6601_DMA_BOUNDARY);
	/* enable sd card mode */
	FUNC2(priv, AU6601_SD_CARD, AU6601_ACTIVE_CTRL);

	/* set BUS width to 1 bit */
	FUNC2(priv, 0, AU6601_REG_BUS_CTRL);

	/* reset data state engine */
	FUNC0(host, AU6601_RESET_DATA);
	/* Not sure if a voodoo with AU6601_DMA_BOUNDARY is really needed */
	FUNC2(priv, 0, AU6601_DMA_BOUNDARY);

	FUNC2(priv, 0, AU6601_INTERFACE_MODE_CTRL);
	/* not clear what we are doing here. */
	FUNC2(priv, 0x44, AU6601_PAD_DRIVE0);
	FUNC2(priv, 0x44, AU6601_PAD_DRIVE1);
	FUNC2(priv, 0x00, AU6601_PAD_DRIVE2);

	/* for 6601 - dma_boundary; for 6621 - dma_page_cnt
	 * exact meaning of this register is not clear.
	 */
	FUNC2(priv, cfg->dma, AU6601_DMA_BOUNDARY);

	/* make sure all pins are set to input and VDD is off */
	FUNC2(priv, 0, AU6601_OUTPUT_ENABLE);
	FUNC2(priv, 0, AU6601_POWER_CONTROL);

	FUNC2(priv, AU6601_DETECT_EN, AU6601_DETECT_STATUS);
	/* now we should be safe to enable IRQs */
	FUNC1(host);
}