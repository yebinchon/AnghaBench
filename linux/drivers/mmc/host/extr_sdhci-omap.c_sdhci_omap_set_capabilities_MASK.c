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
struct sdhci_omap_host {struct device* dev; } ;
struct regulator {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int CAPA_VS18 ; 
 int CAPA_VS30 ; 
 int CAPA_VS33 ; 
 int /*<<< orphan*/  IOV_1V8 ; 
 int /*<<< orphan*/  IOV_3V3 ; 
 scalar_t__ FUNC0 (struct regulator*) ; 
 int FUNC1 (struct regulator*) ; 
 int /*<<< orphan*/  SDHCI_OMAP_CAPA ; 
 struct regulator* FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (struct regulator*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator*) ; 
 int FUNC5 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_omap_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct sdhci_omap_host *omap_host)
{
	u32 reg;
	int ret = 0;
	struct device *dev = omap_host->dev;
	struct regulator *vqmmc;

	vqmmc = FUNC2(dev, "vqmmc");
	if (FUNC0(vqmmc)) {
		ret = FUNC1(vqmmc);
		goto reg_put;
	}

	/* voltage capabilities might be set by boot loader, clear it */
	reg = FUNC5(omap_host, SDHCI_OMAP_CAPA);
	reg &= ~(CAPA_VS18 | CAPA_VS30 | CAPA_VS33);

	if (FUNC3(vqmmc, IOV_3V3, IOV_3V3))
		reg |= CAPA_VS33;
	if (FUNC3(vqmmc, IOV_1V8, IOV_1V8))
		reg |= CAPA_VS18;

	FUNC6(omap_host, SDHCI_OMAP_CAPA, reg);

reg_put:
	FUNC4(vqmmc);

	return ret;
}