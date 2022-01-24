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
struct wbsd_host {int dummy; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mmc_host* FUNC0 (struct device*) ; 
 struct wbsd_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct wbsd_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct wbsd_host*) ; 

__attribute__((used)) static void FUNC6(struct device *dev, int pnp)
{
	struct mmc_host *mmc = FUNC0(dev);
	struct wbsd_host *host;

	if (!mmc)
		return;

	host = FUNC1(mmc);

	FUNC2(mmc);

	/*
	 * Power down the SD/MMC function.
	 */
	if (!pnp)
		FUNC3(host);

	FUNC5(host);

	FUNC4(dev);
}