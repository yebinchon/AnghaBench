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
struct omap_hsmmc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  base; scalar_t__ dbclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCTL ; 
 int MMC_VDD_23_24 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int SDVS18 ; 
 int SDVS30 ; 
 int SDVSCLR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct omap_hsmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_hsmmc_host*) ; 

__attribute__((used)) static int FUNC8(struct omap_hsmmc_host *host, int vdd)
{
	u32 reg_val = 0;
	int ret;

	/* Disable the clocks */
	if (host->dbclk)
		FUNC2(host->dbclk);

	/* Turn the power off */
	ret = FUNC6(host, 0);

	/* Turn the power ON with given VDD 1.8 or 3.0v */
	if (!ret)
		ret = FUNC6(host, 1);
	if (host->dbclk)
		FUNC3(host->dbclk);

	if (ret != 0)
		goto err;

	FUNC1(host->base, HCTL,
		FUNC0(host->base, HCTL) & SDVSCLR);
	reg_val = FUNC0(host->base, HCTL);

	/*
	 * If a MMC dual voltage card is detected, the set_ios fn calls
	 * this fn with VDD bit set for 1.8V. Upon card removal from the
	 * slot, omap_hsmmc_set_ios sets the VDD back to 3V on MMC_POWER_OFF.
	 *
	 * Cope with a bit of slop in the range ... per data sheets:
	 *  - "1.8V" for vdds_mmc1/vdds_mmc1a can be up to 2.45V max,
	 *    but recommended values are 1.71V to 1.89V
	 *  - "3.0V" for vdds_mmc1/vdds_mmc1a can be up to 3.5V max,
	 *    but recommended values are 2.7V to 3.3V
	 *
	 * Board setup code shouldn't permit anything very out-of-range.
	 * TWL4030-family VMMC1 and VSIM regulators are fine (avoiding the
	 * middle range) but VSIM can't power DAT4..DAT7 at more than 3V.
	 */
	if ((1 << vdd) <= MMC_VDD_23_24)
		reg_val |= SDVS18;
	else
		reg_val |= SDVS30;

	FUNC1(host->base, HCTL, reg_val);
	FUNC7(host);

	return 0;
err:
	FUNC4(FUNC5(host->mmc), "Unable to switch operating voltage\n");
	return ret;
}