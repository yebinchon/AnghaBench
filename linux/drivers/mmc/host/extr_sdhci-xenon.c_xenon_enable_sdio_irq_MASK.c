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
struct xenon_priv {int sdhc_id; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int XENON_SLOT_TYPE_SDIO_SHIFT ; 
 int /*<<< orphan*/  XENON_SYS_CFG_INFO ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,int) ; 
 struct xenon_priv* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 
 int FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, int enable)
{
	struct sdhci_host *host = FUNC0(mmc);
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct xenon_priv *priv = FUNC2(pltfm_host);
	u32 reg;
	u8 sdhc_id = priv->sdhc_id;

	FUNC1(mmc, enable);

	if (enable) {
		/*
		 * Set SDIO Card Inserted indication
		 * to enable detecting SDIO async irq.
		 */
		reg = FUNC4(host, XENON_SYS_CFG_INFO);
		reg |= (1 << (sdhc_id + XENON_SLOT_TYPE_SDIO_SHIFT));
		FUNC5(host, reg, XENON_SYS_CFG_INFO);
	} else {
		/* Clear SDIO Card Inserted indication */
		reg = FUNC4(host, XENON_SYS_CFG_INFO);
		reg &= ~(1 << (sdhc_id + XENON_SLOT_TYPE_SDIO_SHIFT));
		FUNC5(host, reg, XENON_SYS_CFG_INFO);
	}
}