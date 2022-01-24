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
struct mmc_host {int dummy; } ;
struct cqhci_host {scalar_t__ mmio; struct mmc_host* mmc; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int CQHCI_CTL ; 
 int CQHCI_HALT ; 
 int FUNC0 (struct cqhci_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct cqhci_host *cq_host, u32 val, int reg)
{
	struct mmc_host *mmc = cq_host->mmc;
	u8 ctrl;
	ktime_t timeout;
	bool timed_out;

	/*
	 * During CQE resume/unhalt, CQHCI driver unhalts CQE prior to
	 * cqhci_host_ops enable where SDHCI DMA and BLOCK_SIZE registers need
	 * to be re-configured.
	 * Tegra CQHCI/SDHCI prevents write access to block size register when
	 * CQE is unhalted. So handling CQE resume sequence here to configure
	 * SDHCI block registers prior to exiting CQE halt state.
	 */
	if (reg == CQHCI_CTL && !(val & CQHCI_HALT) &&
	    FUNC0(cq_host, CQHCI_CTL) & CQHCI_HALT) {
		FUNC4(mmc);
		FUNC5(val, cq_host->mmio + reg);
		timeout = FUNC1(FUNC3(), 50);
		while (1) {
			timed_out = FUNC2(FUNC3(), timeout) > 0;
			ctrl = FUNC0(cq_host, CQHCI_CTL);
			if (!(ctrl & CQHCI_HALT) || timed_out)
				break;
		}
		/*
		 * CQE usually resumes very quick, but incase if Tegra CQE
		 * doesn't resume retry unhalt.
		 */
		if (timed_out)
			FUNC5(val, cq_host->mmio + reg);
	} else {
		FUNC5(val, cq_host->mmio + reg);
	}
}