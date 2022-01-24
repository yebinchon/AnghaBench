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
typedef  scalar_t__ u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct platform_device {int dummy; } ;
struct pic32_sdhci_priv {int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  base_clk; } ;

/* Variables and functions */
 scalar_t__ SDHCI_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC1 (struct platform_device*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 struct pic32_sdhci_priv* FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct sdhci_host *host = FUNC1(pdev);
	struct pic32_sdhci_priv *sdhci_pdata = FUNC4(host);
	u32 scratch;

	scratch = FUNC2(host->ioaddr + SDHCI_INT_STATUS);
	FUNC5(host, scratch == (u32)~0);
	FUNC0(sdhci_pdata->base_clk);
	FUNC0(sdhci_pdata->sys_clk);
	FUNC3(pdev);

	return 0;
}