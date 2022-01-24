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
struct mmc_host {int dummy; } ;
struct au1xmmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_CONFIG_SI ; 
 struct au1xmmc_host* FUNC2 (struct mmc_host*) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *mmc, int en)
{
	struct au1xmmc_host *host = FUNC2(mmc);

	if (en)
		FUNC1(host, SD_CONFIG_SI);
	else
		FUNC0(host, SD_CONFIG_SI);
}