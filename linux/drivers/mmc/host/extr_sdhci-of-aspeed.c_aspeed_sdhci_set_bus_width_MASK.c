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
typedef  int /*<<< orphan*/  u8 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct aspeed_sdhci {struct aspeed_sdc* parent; } ;
struct aspeed_sdc {int dummy; } ;

/* Variables and functions */
 int MMC_BUS_WIDTH_4 ; 
 int MMC_BUS_WIDTH_8 ; 
 int /*<<< orphan*/  SDHCI_CTRL_4BITBUS ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_sdc*,struct aspeed_sdhci*,int) ; 
 struct aspeed_sdhci* FUNC1 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, int width)
{
	struct sdhci_pltfm_host *pltfm_priv;
	struct aspeed_sdhci *aspeed_sdhci;
	struct aspeed_sdc *aspeed_sdc;
	u8 ctrl;

	pltfm_priv = FUNC2(host);
	aspeed_sdhci = FUNC1(pltfm_priv);
	aspeed_sdc = aspeed_sdhci->parent;

	/* Set/clear 8-bit mode */
	FUNC0(aspeed_sdc, aspeed_sdhci,
				       width == MMC_BUS_WIDTH_8);

	/* Set/clear 1 or 4 bit mode */
	ctrl = FUNC3(host, SDHCI_HOST_CONTROL);
	if (width == MMC_BUS_WIDTH_4)
		ctrl |= SDHCI_CTRL_4BITBUS;
	else
		ctrl &= ~SDHCI_CTRL_4BITBUS;
	FUNC4(host, ctrl, SDHCI_HOST_CONTROL);
}