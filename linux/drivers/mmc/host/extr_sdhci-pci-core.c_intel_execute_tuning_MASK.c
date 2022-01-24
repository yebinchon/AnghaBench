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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_RESET_DATA ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int FUNC1 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *mmc, u32 opcode)
{
	int err = FUNC1(mmc, opcode);
	struct sdhci_host *host = FUNC0(mmc);

	if (err)
		return err;

	/*
	 * Tuning can leave the IP in an active state (Buffer Read Enable bit
	 * set) which prevents the entry to low power states (i.e. S0i3). Data
	 * reset will clear it.
	 */
	FUNC2(host, SDHCI_RESET_DATA);

	return 0;
}