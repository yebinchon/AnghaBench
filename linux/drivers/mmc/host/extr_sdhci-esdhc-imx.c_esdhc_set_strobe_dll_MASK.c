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
struct sdhci_host {int /*<<< orphan*/  mmc; scalar_t__ ioaddr; } ;

/* Variables and functions */
 scalar_t__ ESDHC_STROBE_DLL_CTRL ; 
 int ESDHC_STROBE_DLL_CTRL_ENABLE ; 
 int ESDHC_STROBE_DLL_CTRL_RESET ; 
 int ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_SHIFT ; 
 int ESDHC_STROBE_DLL_CTRL_SLV_UPDATE_INT_DEFAULT ; 
 scalar_t__ ESDHC_STROBE_DLL_STATUS ; 
 int ESDHC_STROBE_DLL_STS_REF_LOCK ; 
 int ESDHC_STROBE_DLL_STS_SLV_LOCK ; 
 scalar_t__ ESDHC_VENDOR_SPEC ; 
 int ESDHC_VENDOR_SPEC_FRC_SDCLK_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host)
{
	u32 v;

	/* disable clock before enabling strobe dll */
	FUNC4(FUNC2(host->ioaddr + ESDHC_VENDOR_SPEC) &
		~ESDHC_VENDOR_SPEC_FRC_SDCLK_ON,
		host->ioaddr + ESDHC_VENDOR_SPEC);

	/* force a reset on strobe dll */
	FUNC4(ESDHC_STROBE_DLL_CTRL_RESET,
		host->ioaddr + ESDHC_STROBE_DLL_CTRL);
	/* clear the reset bit on strobe dll before any setting */
	FUNC4(0, host->ioaddr + ESDHC_STROBE_DLL_CTRL);

	/*
	 * enable strobe dll ctrl and adjust the delay target
	 * for the uSDHC loopback read clock
	 */
	v = ESDHC_STROBE_DLL_CTRL_ENABLE |
		ESDHC_STROBE_DLL_CTRL_SLV_UPDATE_INT_DEFAULT |
		(7 << ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_SHIFT);
	FUNC4(v, host->ioaddr + ESDHC_STROBE_DLL_CTRL);
	/* wait 5us to make sure strobe dll status register stable */
	FUNC3(5);
	v = FUNC2(host->ioaddr + ESDHC_STROBE_DLL_STATUS);
	if (!(v & ESDHC_STROBE_DLL_STS_REF_LOCK))
		FUNC0(FUNC1(host->mmc),
		"warning! HS400 strobe DLL status REF not lock!\n");
	if (!(v & ESDHC_STROBE_DLL_STS_SLV_LOCK))
		FUNC0(FUNC1(host->mmc),
		"warning! HS400 strobe DLL status SLV not lock!\n");
}