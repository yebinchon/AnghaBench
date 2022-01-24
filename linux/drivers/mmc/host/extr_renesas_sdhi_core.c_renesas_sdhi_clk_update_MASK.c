#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tmio_mmc_host {TYPE_1__* pdata; } ;
struct renesas_sdhi {int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int TMIO_MMC_MIN_RCAR2 ; 
 unsigned int UINT_MAX ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 struct renesas_sdhi* FUNC3 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC6(struct tmio_mmc_host *host,
					    unsigned int new_clock)
{
	struct renesas_sdhi *priv = FUNC3(host);
	unsigned int freq, diff, best_freq = 0, diff_min = ~0;
	int i;

	/* tested only on R-Car Gen2+ currently; may work for others */
	if (!(host->pdata->flags & TMIO_MMC_MIN_RCAR2))
		return FUNC0(priv->clk);

	/*
	 * We want the bus clock to be as close as possible to, but no
	 * greater than, new_clock.  As we can divide by 1 << i for
	 * any i in [0, 9] we want the input clock to be as close as
	 * possible, but no greater than, new_clock << i.
	 */
	for (i = FUNC5(9, FUNC4(UINT_MAX / new_clock)); i >= 0; i--) {
		freq = FUNC1(priv->clk, new_clock << i);
		if (freq > (new_clock << i)) {
			/* Too fast; look for a slightly slower option */
			freq = FUNC1(priv->clk,
					      (new_clock << i) / 4 * 3);
			if (freq > (new_clock << i))
				continue;
		}

		diff = new_clock - (freq >> i);
		if (diff <= diff_min) {
			best_freq = freq;
			diff_min = diff;
		}
	}

	FUNC2(priv->clk, best_freq);

	return FUNC0(priv->clk);
}