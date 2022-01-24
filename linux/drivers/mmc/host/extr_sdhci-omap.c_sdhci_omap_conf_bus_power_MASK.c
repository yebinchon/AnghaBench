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
struct sdhci_omap_host {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int HCTL_SDBP ; 
 int HCTL_SDVS_18 ; 
 int HCTL_SDVS_33 ; 
 int HCTL_SDVS_MASK ; 
 unsigned char MMC_SIGNAL_VOLTAGE_330 ; 
 int /*<<< orphan*/  SDHCI_OMAP_HCTL ; 
 int /*<<< orphan*/  SDHCI_OMAP_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_omap_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct sdhci_omap_host *omap_host,
				      unsigned char signal_voltage)
{
	u32 reg;
	ktime_t timeout;

	reg = FUNC4(omap_host, SDHCI_OMAP_HCTL);
	reg &= ~HCTL_SDVS_MASK;

	if (signal_voltage == MMC_SIGNAL_VOLTAGE_330)
		reg |= HCTL_SDVS_33;
	else
		reg |= HCTL_SDVS_18;

	FUNC5(omap_host, SDHCI_OMAP_HCTL, reg);

	reg |= HCTL_SDBP;
	FUNC5(omap_host, SDHCI_OMAP_HCTL, reg);

	/* wait 1ms */
	timeout = FUNC1(FUNC3(), SDHCI_OMAP_TIMEOUT);
	while (1) {
		bool timedout = FUNC2(FUNC3(), timeout);

		if (FUNC4(omap_host, SDHCI_OMAP_HCTL) & HCTL_SDBP)
			break;
		if (FUNC0(timedout))
			return;
		FUNC6(5, 10);
	}
}