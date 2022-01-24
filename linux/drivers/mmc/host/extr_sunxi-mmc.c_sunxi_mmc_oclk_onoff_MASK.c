#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sunxi_mmc_host {TYPE_1__* cfg; int /*<<< orphan*/  mmc; } ;
struct TYPE_2__ {scalar_t__ mask_data0; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  REG_CLKCR ; 
 int /*<<< orphan*/  REG_CMDR ; 
 int /*<<< orphan*/  REG_RINTR ; 
 int SDXC_CARD_CLOCK_ON ; 
 int SDXC_LOW_POWER_ON ; 
 int SDXC_MASK_DATA0 ; 
 int SDXC_SDIO_INTERRUPT ; 
 int SDXC_START ; 
 int SDXC_UPCLK_ONLY ; 
 int SDXC_WAIT_PRE_OVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sunxi_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sunxi_mmc_host*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC5 (int) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct sunxi_mmc_host *host, u32 oclk_en)
{
	unsigned long expire = jiffies + FUNC5(750);
	u32 rval;

	FUNC0(FUNC2(host->mmc), "%sabling the clock\n",
		oclk_en ? "en" : "dis");

	rval = FUNC3(host, REG_CLKCR);
	rval &= ~(SDXC_CARD_CLOCK_ON | SDXC_LOW_POWER_ON | SDXC_MASK_DATA0);

	if (oclk_en)
		rval |= SDXC_CARD_CLOCK_ON;
	if (host->cfg->mask_data0)
		rval |= SDXC_MASK_DATA0;

	FUNC4(host, REG_CLKCR, rval);

	rval = SDXC_START | SDXC_UPCLK_ONLY | SDXC_WAIT_PRE_OVER;
	FUNC4(host, REG_CMDR, rval);

	do {
		rval = FUNC3(host, REG_CMDR);
	} while (FUNC6(jiffies, expire) && (rval & SDXC_START));

	/* clear irq status bits set by the command */
	FUNC4(host, REG_RINTR,
		   FUNC3(host, REG_RINTR) & ~SDXC_SDIO_INTERRUPT);

	if (rval & SDXC_START) {
		FUNC1(FUNC2(host->mmc), "fatal err update clk timeout\n");
		return -EIO;
	}

	if (host->cfg->mask_data0) {
		rval = FUNC3(host, REG_CLKCR);
		FUNC4(host, REG_CLKCR, rval & ~SDXC_MASK_DATA0);
	}

	return 0;
}