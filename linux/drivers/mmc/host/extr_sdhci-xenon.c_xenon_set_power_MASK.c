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
typedef  scalar_t__ u8 ;
struct sdhci_host {scalar_t__ pwr; struct mmc_host* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,unsigned char,unsigned short) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host, unsigned char mode,
		unsigned short vdd)
{
	struct mmc_host *mmc = host->mmc;
	u8 pwr = host->pwr;

	FUNC2(host, mode, vdd);

	if (host->pwr == pwr)
		return;

	if (host->pwr == 0)
		vdd = 0;

	if (!FUNC0(mmc->supply.vmmc))
		FUNC1(mmc, mmc->supply.vmmc, vdd);
}