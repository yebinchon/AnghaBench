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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_hsmmc_host {int /*<<< orphan*/  mmc; scalar_t__ dbclk; int /*<<< orphan*/  dev; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  tx_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct omap_hsmmc_host* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct omap_hsmmc_host *host = FUNC6(pdev);

	FUNC9(host->dev);
	FUNC5(host->mmc);

	FUNC3(host->tx_chan);
	FUNC3(host->rx_chan);

	FUNC1(host->dev);
	FUNC8(host->dev);
	FUNC10(host->dev);
	FUNC7(host->dev);
	FUNC2(&pdev->dev, false);
	if (host->dbclk)
		FUNC0(host->dbclk);

	FUNC4(host->mmc);

	return 0;
}