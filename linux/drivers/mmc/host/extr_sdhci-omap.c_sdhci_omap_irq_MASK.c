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
typedef  int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {scalar_t__ is_tuning; } ;
struct sdhci_host {TYPE_1__* cmd; int /*<<< orphan*/  data_early; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int CMD_ERR_MASK ; 
 int CMD_MASK ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  SDHCI_INT_STATUS ; 
 int SDHCI_INT_TIMEOUT ; 
 struct sdhci_omap_host* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct sdhci_host *host, u32 intmask)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct sdhci_omap_host *omap_host = FUNC0(pltfm_host);

	if (omap_host->is_tuning && host->cmd && !host->data_early &&
	    (intmask & CMD_ERR_MASK)) {

		/*
		 * Since we are not resetting data lines during tuning
		 * operation, data error or data complete interrupts
		 * might still arrive. Mark this request as a failure
		 * but still wait for the data interrupt
		 */
		if (intmask & SDHCI_INT_TIMEOUT)
			host->cmd->error = -ETIMEDOUT;
		else
			host->cmd->error = -EILSEQ;

		host->cmd = NULL;

		/*
		 * Sometimes command error interrupts and command complete
		 * interrupt will arrive together. Clear all command related
		 * interrupts here.
		 */
		FUNC2(host, intmask & CMD_MASK, SDHCI_INT_STATUS);
		intmask &= ~CMD_MASK;
	}

	return intmask;
}