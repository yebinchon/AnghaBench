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
struct sdhci_host {scalar_t__ ioaddr; } ;
struct platform_device {int dummy; } ;
struct f_sdhost_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_iface; } ;

/* Variables and functions */
 scalar_t__ SDHCI_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*) ; 
 struct f_sdhost_priv* FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct sdhci_host *host = FUNC1(pdev);
	struct f_sdhost_priv *priv = FUNC5(host);

	FUNC6(host, FUNC3(host->ioaddr + SDHCI_INT_STATUS) ==
			  0xffffffff);

	FUNC0(priv->clk_iface);
	FUNC0(priv->clk);

	FUNC4(host);
	FUNC2(pdev, NULL);

	return 0;
}