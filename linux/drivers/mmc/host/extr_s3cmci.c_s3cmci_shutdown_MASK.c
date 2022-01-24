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
struct s3cmci_host {scalar_t__ irq_cd; int /*<<< orphan*/  clk; } ;
struct platform_device {int dummy; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct s3cmci_host*) ; 
 struct s3cmci_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 struct mmc_host* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct s3cmci_host*) ; 

__attribute__((used)) static void FUNC7(struct platform_device *pdev)
{
	struct mmc_host	*mmc = FUNC4(pdev);
	struct s3cmci_host *host = FUNC2(mmc);

	if (host->irq_cd >= 0)
		FUNC1(host->irq_cd, host);

	FUNC6(host);
	FUNC5(host);
	FUNC3(mmc);
	FUNC0(host->clk);
}