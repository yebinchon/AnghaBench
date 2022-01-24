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
struct sdhci_sprd_host {int /*<<< orphan*/  clk_sdio; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 struct sdhci_sprd_host* FUNC0 (struct sdhci_host*) ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct sdhci_host *host)
{
	struct sdhci_sprd_host *sprd_host = FUNC0(host);

	return FUNC1(sprd_host->clk_sdio, ULONG_MAX);
}