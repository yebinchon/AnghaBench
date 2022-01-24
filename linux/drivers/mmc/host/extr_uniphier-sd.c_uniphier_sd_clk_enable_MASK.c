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
struct uniphier_sd_priv {int clk_rate; int caps; int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; int /*<<< orphan*/  rst_br; } ;
struct tmio_mmc_host {struct mmc_host* mmc; } ;
struct mmc_host {int f_max; int f_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  ULONG_MAX ; 
 int UNIPHIER_SD_CAP_EXTENDED_IP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct uniphier_sd_priv* FUNC6 (struct tmio_mmc_host*) ; 

__attribute__((used)) static int FUNC7(struct tmio_mmc_host *host)
{
	struct uniphier_sd_priv *priv = FUNC6(host);
	struct mmc_host *mmc = host->mmc;
	int ret;

	ret = FUNC2(priv->clk);
	if (ret)
		return ret;

	ret = FUNC3(priv->clk, ULONG_MAX);
	if (ret)
		goto disable_clk;

	priv->clk_rate = FUNC1(priv->clk);

	/* If max-frequency property is set, use it. */
	if (!mmc->f_max)
		mmc->f_max = priv->clk_rate;

	/*
	 * 1/512 is the finest divisor in the original IP.  Newer versions
	 * also supports 1/1024 divisor. (UniPhier-specific extension)
	 */
	if (priv->caps & UNIPHIER_SD_CAP_EXTENDED_IP)
		mmc->f_min = priv->clk_rate / 1024;
	else
		mmc->f_min = priv->clk_rate / 512;

	ret = FUNC5(priv->rst);
	if (ret)
		goto disable_clk;

	ret = FUNC5(priv->rst_br);
	if (ret)
		goto assert_rst;

	return 0;

assert_rst:
	FUNC4(priv->rst);
disable_clk:
	FUNC0(priv->clk);

	return ret;
}