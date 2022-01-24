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
struct msdc_host {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msdc_host*,int) ; 
 struct msdc_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, int enb)
{
	unsigned long flags;
	struct msdc_host *host = FUNC1(mmc);

	FUNC4(&host->lock, flags);
	FUNC0(host, enb);
	FUNC5(&host->lock, flags);

	if (enb)
		FUNC2(host->dev);
	else
		FUNC3(host->dev);
}