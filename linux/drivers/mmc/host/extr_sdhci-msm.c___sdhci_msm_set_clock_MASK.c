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
typedef  int /*<<< orphan*/  u16 ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {scalar_t__ actual_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host, unsigned int clock)
{
	u16 clk;
	/*
	 * Keep actual_clock as zero -
	 * - since there is no divider used so no need of having actual_clock.
	 * - MSM controller uses SDCLK for data timeout calculation. If
	 *   actual_clock is zero, host->clock is taken for calculation.
	 */
	host->mmc->actual_clock = 0;

	FUNC2(host, 0, SDHCI_CLOCK_CONTROL);

	if (clock == 0)
		return;

	/*
	 * MSM controller do not use clock divider.
	 * Thus read SDHCI_CLOCK_CONTROL and only enable
	 * clock with no divider value programmed.
	 */
	clk = FUNC1(host, SDHCI_CLOCK_CONTROL);
	FUNC0(host, clk);
}