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
struct wbsd_host {int /*<<< orphan*/  ignore_timer; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mmc_host* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct wbsd_host* FUNC5 (struct mmc_host*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct mmc_host *mmc;
	struct wbsd_host *host;

	mmc = FUNC2(dev);
	if (!mmc)
		return;

	host = FUNC5(mmc);
	FUNC0(host == NULL);

	FUNC1(&host->ignore_timer);

	FUNC4(mmc);

	FUNC3(dev, NULL);
}