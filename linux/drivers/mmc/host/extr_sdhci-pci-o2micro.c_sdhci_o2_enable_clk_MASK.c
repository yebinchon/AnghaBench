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
typedef  int /*<<< orphan*/  u16 ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_CLOCK_CARD_EN ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int /*<<< orphan*/  SDHCI_CLOCK_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host, u16 clk)
{
	/* Enable internal clock */
	clk |= SDHCI_CLOCK_INT_EN;
	FUNC2(host, clk, SDHCI_CLOCK_CONTROL);

	FUNC0(host);
	if (FUNC1(host->mmc)) {
		clk |= SDHCI_CLOCK_CARD_EN;
		FUNC2(host, clk, SDHCI_CLOCK_CONTROL);
	}
}