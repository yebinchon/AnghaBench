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
typedef  int /*<<< orphan*/  u8 ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {int caps; } ;

/* Variables and functions */
 int MMC_CAP_NONREMOVABLE ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host, u8 mask)
{
	FUNC1(host, mask);

	if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
		FUNC0(host);
}