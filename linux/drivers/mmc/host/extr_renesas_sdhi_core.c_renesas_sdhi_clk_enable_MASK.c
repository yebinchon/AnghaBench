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
struct tmio_mmc_host {struct mmc_host* mmc; } ;
struct renesas_sdhi {int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_cd; } ;
struct mmc_host {int /*<<< orphan*/  f_min; scalar_t__ f_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct renesas_sdhi* FUNC4 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int,long) ; 
 int /*<<< orphan*/  FUNC6 (struct tmio_mmc_host*,int) ; 

__attribute__((used)) static int FUNC7(struct tmio_mmc_host *host)
{
	struct mmc_host *mmc = host->mmc;
	struct renesas_sdhi *priv = FUNC4(host);
	int ret = FUNC2(priv->clk);

	if (ret < 0)
		return ret;

	ret = FUNC2(priv->clk_cd);
	if (ret < 0) {
		FUNC0(priv->clk);
		return ret;
	}

	/*
	 * The clock driver may not know what maximum frequency
	 * actually works, so it should be set with the max-frequency
	 * property which will already have been read to f_max.  If it
	 * was missing, assume the current frequency is the maximum.
	 */
	if (!mmc->f_max)
		mmc->f_max = FUNC1(priv->clk);

	/*
	 * Minimum frequency is the minimum input clock frequency
	 * divided by our maximum divider.
	 */
	mmc->f_min = FUNC5(FUNC3(priv->clk, 1) / 512, 1L);

	/* enable 16bit data access on SDBUF as default */
	FUNC6(host, 16);

	return 0;
}