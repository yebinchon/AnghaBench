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
typedef  unsigned int u8 ;
struct dw_mci_exynos_priv_data {unsigned int cur_speed; } ;
struct dw_mci {unsigned long bus_hz; scalar_t__ current_speed; int /*<<< orphan*/  ciu_clk; int /*<<< orphan*/  dev; struct dw_mci_exynos_priv_data* priv; } ;

/* Variables and functions */
 unsigned int EXYNOS_CCLKIN_MIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 unsigned int FUNC4 (struct dw_mci*) ; 

__attribute__((used)) static void FUNC5(struct dw_mci *host, unsigned int wanted)
{
	struct dw_mci_exynos_priv_data *priv = host->priv;
	unsigned long actual;
	u8 div;
	int ret;
	/*
	 * Don't care if wanted clock is zero or
	 * ciu clock is unavailable
	 */
	if (!wanted || FUNC0(host->ciu_clk))
		return;

	/* Guaranteed minimum frequency for cclkin */
	if (wanted < EXYNOS_CCLKIN_MIN)
		wanted = EXYNOS_CCLKIN_MIN;

	if (wanted == priv->cur_speed)
		return;

	div = FUNC4(host);
	ret = FUNC2(host->ciu_clk, wanted * div);
	if (ret)
		FUNC3(host->dev,
			"failed to set clk-rate %u error: %d\n",
			wanted * div, ret);
	actual = FUNC1(host->ciu_clk);
	host->bus_hz = actual / div;
	priv->cur_speed = wanted;
	host->current_speed = 0;
}