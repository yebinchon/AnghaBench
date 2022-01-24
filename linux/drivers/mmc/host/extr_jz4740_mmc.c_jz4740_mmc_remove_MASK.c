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
struct platform_device {int dummy; } ;
struct jz4740_mmc_host {int /*<<< orphan*/  mmc; scalar_t__ use_dma; int /*<<< orphan*/  irq; int /*<<< orphan*/  timeout_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct jz4740_mmc_host*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct jz4740_mmc_host* FUNC7 (struct platform_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct jz4740_mmc_host *host = FUNC7(pdev);

	FUNC0(&host->timeout_timer);
	FUNC4(host, 0xff, false);
	FUNC3(host);

	FUNC6(host->mmc);

	FUNC1(host->irq, host);

	if (host->use_dma)
		FUNC2(host);

	FUNC5(host->mmc);

	return 0;
}