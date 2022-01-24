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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_host {scalar_t__ tuning_mode; int /*<<< orphan*/  tuning_err; scalar_t__ tuning_count; TYPE_1__* mmc; } ;
struct TYPE_2__ {scalar_t__ retune_period; } ;

/* Variables and functions */
 scalar_t__ SDHCI_TUNING_MODE_1 ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC3(struct sdhci_host *host, u32 opcode)
{
	host->mmc->retune_period = 0;
	if (host->tuning_mode == SDHCI_TUNING_MODE_1)
		host->mmc->retune_period = host->tuning_count;

	FUNC1(host);
	host->tuning_err = FUNC0(host, opcode);
	FUNC2(host);

	return 0;
}