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
struct msdc_host {scalar_t__ base; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ EMMC_IOCON ; 
 struct msdc_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc)
{
	struct msdc_host *host = FUNC0(mmc);

	FUNC2(host->base + EMMC_IOCON, 1);
	FUNC3(10); /* 10us is enough */
	FUNC1(host->base + EMMC_IOCON, 1);
}