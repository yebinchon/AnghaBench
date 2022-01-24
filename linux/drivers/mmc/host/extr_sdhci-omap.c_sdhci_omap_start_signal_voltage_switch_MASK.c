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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {struct device* dev; } ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {int /*<<< orphan*/  signal_voltage; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int AC12_V1V8_SIGEN ; 
 int CAPA_VS18 ; 
 int CAPA_VS33 ; 
 int EOPNOTSUPP ; 
 unsigned int IOV_1V8 ; 
 unsigned int IOV_3V3 ; 
 int /*<<< orphan*/  MMC_SIGNAL_VOLTAGE_180 ; 
 int /*<<< orphan*/  MMC_SIGNAL_VOLTAGE_330 ; 
 int /*<<< orphan*/  SDHCI_OMAP_AC12 ; 
 int /*<<< orphan*/  SDHCI_OMAP_CAPA ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int) ; 
 struct sdhci_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sdhci_omap_host*,unsigned int) ; 
 int FUNC5 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_omap_host*,int /*<<< orphan*/ ,int) ; 
 struct sdhci_omap_host* FUNC7 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC8 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC9(struct mmc_host *mmc,
						  struct mmc_ios *ios)
{
	u32 reg;
	int ret;
	unsigned int iov;
	struct sdhci_host *host = FUNC2(mmc);
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_omap_host *omap_host;
	struct device *dev;

	pltfm_host = FUNC8(host);
	omap_host = FUNC7(pltfm_host);
	dev = omap_host->dev;

	if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_330) {
		reg = FUNC5(omap_host, SDHCI_OMAP_CAPA);
		if (!(reg & CAPA_VS33))
			return -EOPNOTSUPP;

		FUNC3(omap_host, ios->signal_voltage);

		reg = FUNC5(omap_host, SDHCI_OMAP_AC12);
		reg &= ~AC12_V1V8_SIGEN;
		FUNC6(omap_host, SDHCI_OMAP_AC12, reg);

		iov = IOV_3V3;
	} else if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180) {
		reg = FUNC5(omap_host, SDHCI_OMAP_CAPA);
		if (!(reg & CAPA_VS18))
			return -EOPNOTSUPP;

		FUNC3(omap_host, ios->signal_voltage);

		reg = FUNC5(omap_host, SDHCI_OMAP_AC12);
		reg |= AC12_V1V8_SIGEN;
		FUNC6(omap_host, SDHCI_OMAP_AC12, reg);

		iov = IOV_1V8;
	} else {
		return -EOPNOTSUPP;
	}

	ret = FUNC4(omap_host, iov);
	if (ret) {
		FUNC1(dev, "failed to switch IO voltage to %dmV\n", iov);
		return ret;
	}

	FUNC0(dev, "IO voltage switched to %dmV\n", iov);
	return 0;
}