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
struct sdhci_pltfm_host {int /*<<< orphan*/  clk; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SDHCI_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC1 (struct platform_device*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 struct sdhci_pltfm_host* FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int) ; 

int FUNC6(struct platform_device *pdev)
{
	struct sdhci_host *host = FUNC1(pdev);
	struct sdhci_pltfm_host *pltfm_host = FUNC4(host);
	int dead = (FUNC2(host->ioaddr + SDHCI_INT_STATUS) == 0xffffffff);

	FUNC5(host, dead);
	FUNC0(pltfm_host->clk);
	FUNC3(pdev);

	return 0;
}