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
struct sdhci_host {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_host *host;
	int dead = 0;

	host = FUNC1(pdev);
	pltfm_host = FUNC3(host);

	FUNC4(host, dead);

	FUNC0(pltfm_host->clk);

	FUNC2(pdev);

	return 0;
}