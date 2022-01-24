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
struct clk {int dummy; } ;
struct at91_ramc_caps {scalar_t__ has_mpddr_clk; scalar_t__ has_ddrck; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct at91_ramc_caps* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	const struct at91_ramc_caps *caps;
	struct clk *clk;

	caps = FUNC4(&pdev->dev);

	if (caps->has_ddrck) {
		clk = FUNC3(&pdev->dev, "ddrck");
		if (FUNC0(clk))
			return FUNC1(clk);
		FUNC2(clk);
	}

	if (caps->has_mpddr_clk) {
		clk = FUNC3(&pdev->dev, "mpddr");
		if (FUNC0(clk)) {
			FUNC5("AT91 RAMC: couldn't get mpddr clock\n");
			return FUNC1(clk);
		}
		FUNC2(clk);
	}

	return 0;
}