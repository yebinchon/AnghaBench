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
struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_BUFFER ; 
 int SDHCI_DATA_AVAILABLE ; 
 int /*<<< orphan*/  SDHCI_PRESENT_STATE ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *mmc)
{
	struct sdhci_host *host = FUNC0(mmc);
	u32 reg;

	reg = FUNC2(host, SDHCI_PRESENT_STATE);
	while (reg & SDHCI_DATA_AVAILABLE) {
		FUNC2(host, SDHCI_BUFFER);
		reg = FUNC2(host, SDHCI_PRESENT_STATE);
	}

	FUNC1(mmc);
}