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
typedef  int u16 ;
struct via_crdr_mmc_host {int /*<<< orphan*/  finish_tasklet; TYPE_1__* cmd; int /*<<< orphan*/  mmc; } ;
struct TYPE_2__ {int error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EILSEQ ; 
 int ETIMEDOUT ; 
 int VIA_CRDR_SDSTS_CRD ; 
 int VIA_CRDR_SDSTS_CRTO ; 
 int VIA_CRDR_SDSTS_SC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct via_crdr_mmc_host*) ; 

__attribute__((used)) static void FUNC5(struct via_crdr_mmc_host *host, u16 intmask)
{
	FUNC0(intmask == 0);

	if (!host->cmd) {
		FUNC2("%s: Got command interrupt 0x%x even "
		       "though no command operation was in progress.\n",
		       FUNC1(host->mmc), intmask);
		return;
	}

	if (intmask & VIA_CRDR_SDSTS_CRTO)
		host->cmd->error = -ETIMEDOUT;
	else if (intmask & VIA_CRDR_SDSTS_SC)
		host->cmd->error = -EILSEQ;

	if (host->cmd->error)
		FUNC3(&host->finish_tasklet);
	else if (intmask & VIA_CRDR_SDSTS_CRD)
		FUNC4(host);
}