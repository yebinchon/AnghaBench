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
struct mmc_ios {int /*<<< orphan*/  signal_voltage; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int FUNC3 (struct mmc_host*,struct mmc_ios*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mmc_host *mmc, struct mmc_ios *ios)
{
	int ret;

	ret = FUNC3(mmc, ios);
	if (ret < 0)
		return ret;

	ret = FUNC4(FUNC2(mmc), ios->signal_voltage);
	if (ret)
		FUNC0(FUNC1(mmc),
			      "Failed to set pinstate err=%d\n", ret);
	return ret;
}