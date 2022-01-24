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
struct sdhci_host {int /*<<< orphan*/  ier; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_INT_DATA_TIMEOUT ; 
 int /*<<< orphan*/  SDHCI_INT_ENABLE ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sdhci_host *host, bool enable)
{
	if (enable)
		host->ier |= SDHCI_INT_DATA_TIMEOUT;
	else
		host->ier &= ~SDHCI_INT_DATA_TIMEOUT;
	FUNC0(host, host->ier, SDHCI_INT_ENABLE);
	FUNC0(host, host->ier, SDHCI_SIGNAL_ENABLE);
}