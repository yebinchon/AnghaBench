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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ power_mode; int /*<<< orphan*/  power_delay_ms; int /*<<< orphan*/  clock; scalar_t__ vdd; } ;
struct mmc_host {TYPE_1__ ios; int /*<<< orphan*/  f_init; } ;

/* Variables and functions */
 scalar_t__ MMC_POWER_ON ; 
 scalar_t__ MMC_POWER_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 

void FUNC7(struct mmc_host *host, u32 ocr)
{
	if (host->ios.power_mode == MMC_POWER_ON)
		return;

	FUNC3(host);

	host->ios.vdd = FUNC0(ocr) - 1;
	host->ios.power_mode = MMC_POWER_UP;
	/* Set initial state and call mmc_set_ios */
	FUNC5(host);

	FUNC4(host);

	/*
	 * This delay should be sufficient to allow the power supply
	 * to reach the minimum voltage.
	 */
	FUNC1(host->ios.power_delay_ms);

	FUNC2(host);

	host->ios.clock = host->f_init;

	host->ios.power_mode = MMC_POWER_ON;
	FUNC6(host);

	/*
	 * This delay must be at least 74 clock sizes, or 1 ms, or the
	 * time required to reach a stable voltage.
	 */
	FUNC1(host->ios.power_delay_ms);
}