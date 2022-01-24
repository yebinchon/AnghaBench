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
typedef  int u32 ;
struct sdhci_host {int cqe_ier; int /*<<< orphan*/  mmc; int /*<<< orphan*/  cqe_on; } ;

/* Variables and functions */
 int EILSEQ ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int SDHCI_INT_ADMA_ERROR ; 
 int SDHCI_INT_BUS_POWER ; 
 int SDHCI_INT_CRC ; 
 int SDHCI_INT_DATA_CRC ; 
 int SDHCI_INT_DATA_END_BIT ; 
 int SDHCI_INT_DATA_TIMEOUT ; 
 int SDHCI_INT_END_BIT ; 
 int SDHCI_INT_ERROR ; 
 int SDHCI_INT_INDEX ; 
 int /*<<< orphan*/  SDHCI_INT_STATUS ; 
 int SDHCI_INT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

bool FUNC4(struct sdhci_host *host, u32 intmask, int *cmd_error,
		   int *data_error)
{
	u32 mask;

	if (!host->cqe_on)
		return false;

	if (intmask & (SDHCI_INT_INDEX | SDHCI_INT_END_BIT | SDHCI_INT_CRC))
		*cmd_error = -EILSEQ;
	else if (intmask & SDHCI_INT_TIMEOUT)
		*cmd_error = -ETIMEDOUT;
	else
		*cmd_error = 0;

	if (intmask & (SDHCI_INT_DATA_END_BIT | SDHCI_INT_DATA_CRC))
		*data_error = -EILSEQ;
	else if (intmask & SDHCI_INT_DATA_TIMEOUT)
		*data_error = -ETIMEDOUT;
	else if (intmask & SDHCI_INT_ADMA_ERROR)
		*data_error = -EIO;
	else
		*data_error = 0;

	/* Clear selected interrupts. */
	mask = intmask & host->cqe_ier;
	FUNC3(host, mask, SDHCI_INT_STATUS);

	if (intmask & SDHCI_INT_BUS_POWER)
		FUNC1("%s: Card is consuming too much power!\n",
		       FUNC0(host->mmc));

	intmask &= ~(host->cqe_ier | SDHCI_INT_ERROR);
	if (intmask) {
		FUNC3(host, intmask, SDHCI_INT_STATUS);
		FUNC1("%s: CQE: Unexpected interrupt 0x%08x.\n",
		       FUNC0(host->mmc), intmask);
		FUNC2(host);
	}

	return true;
}