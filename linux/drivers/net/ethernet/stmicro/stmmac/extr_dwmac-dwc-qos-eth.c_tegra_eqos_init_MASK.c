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
typedef  unsigned long u32 ;
struct tegra_eqos {scalar_t__ regs; int /*<<< orphan*/  clk_slave; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ GMAC_1US_TIC_COUNTER ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev, void *priv)
{
	struct tegra_eqos *eqos = priv;
	unsigned long rate;
	u32 value;

	rate = FUNC0(eqos->clk_slave);

	value = (rate / 1000000) - 1;
	FUNC1(value, eqos->regs + GMAC_1US_TIC_COUNTER);

	return 0;
}