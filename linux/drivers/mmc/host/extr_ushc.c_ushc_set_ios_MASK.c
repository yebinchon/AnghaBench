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
struct ushc_data {int dummy; } ;
struct mmc_ios {int bus_width; scalar_t__ timing; int /*<<< orphan*/  clock; int /*<<< orphan*/  power_mode; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ MMC_TIMING_SD_HS ; 
 struct ushc_data* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct ushc_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ushc_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ushc_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct ushc_data *ushc = FUNC0(mmc);

	FUNC3(ushc, ios->power_mode);
	FUNC2(ushc, 1 << ios->bus_width);
	FUNC1(ushc, ios->clock, ios->timing == MMC_TIMING_SD_HS);
}