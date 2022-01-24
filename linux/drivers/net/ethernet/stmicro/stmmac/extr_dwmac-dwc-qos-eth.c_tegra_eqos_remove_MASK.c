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
struct tegra_eqos {int /*<<< orphan*/  clk_master; int /*<<< orphan*/  clk_slave; int /*<<< orphan*/  clk_rx; int /*<<< orphan*/  clk_tx; int /*<<< orphan*/  reset; int /*<<< orphan*/  rst; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tegra_eqos* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct tegra_eqos *eqos = FUNC1(&pdev->dev);

	FUNC3(eqos->rst);
	FUNC2(eqos->reset, 1);
	FUNC0(eqos->clk_tx);
	FUNC0(eqos->clk_rx);
	FUNC0(eqos->clk_slave);
	FUNC0(eqos->clk_master);

	return 0;
}