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
struct usdhi6_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  clk; int /*<<< orphan*/  timeout_work; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct usdhi6_host* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usdhi6_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct usdhi6_host*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct usdhi6_host *host = FUNC4(pdev);

	FUNC3(host->mmc);

	FUNC6(host);
	FUNC0(&host->timeout_work);
	FUNC5(host);
	FUNC1(host->clk);
	FUNC2(host->mmc);

	return 0;
}