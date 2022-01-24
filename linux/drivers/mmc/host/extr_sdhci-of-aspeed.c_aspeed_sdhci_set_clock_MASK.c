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
typedef  int u16 ;
struct sdhci_pltfm_host {int /*<<< orphan*/  clk; } ;
struct sdhci_host {unsigned int max_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int SDHCI_DIVIDER_SHIFT ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, unsigned int clock)
{
	struct sdhci_pltfm_host *pltfm_host;
	unsigned long parent;
	int div;
	u16 clk;

	pltfm_host = FUNC3(host);
	parent = FUNC1(pltfm_host->clk);

	FUNC4(host, 0, SDHCI_CLOCK_CONTROL);

	if (clock == 0)
		return;

	if (FUNC0(clock > host->max_clk))
		clock = host->max_clk;

	for (div = 1; div < 256; div *= 2) {
		if ((parent / div) <= clock)
			break;
	}
	div >>= 1;

	clk = div << SDHCI_DIVIDER_SHIFT;

	FUNC2(host, clk);
}