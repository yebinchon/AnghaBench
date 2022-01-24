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
struct mmc_host {int caps; } ;

/* Variables and functions */
 int MMC_CAP_AGGRESSIVE_PM ; 
 int FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *host)
{
	int err;

	if (!(host->caps & MMC_CAP_AGGRESSIVE_PM))
		return 0;

	err = FUNC0(host);
	if (err)
		FUNC2("%s: error %d doing aggressive suspend\n",
			FUNC1(host), err);

	return err;
}