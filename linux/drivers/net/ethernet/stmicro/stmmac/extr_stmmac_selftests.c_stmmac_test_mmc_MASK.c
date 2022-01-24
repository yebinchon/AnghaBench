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
struct stmmac_counters {scalar_t__ mmc_tx_framecount_g; } ;
struct TYPE_2__ {int /*<<< orphan*/  rmon; } ;
struct stmmac_priv {int /*<<< orphan*/  mmcaddr; struct stmmac_counters mmc; TYPE_1__ dma_cap; } ;
typedef  int /*<<< orphan*/  initial ;
typedef  int /*<<< orphan*/  final ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct stmmac_counters*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stmmac_priv*,int /*<<< orphan*/ ,struct stmmac_counters*) ; 
 int FUNC2 (struct stmmac_priv*) ; 

__attribute__((used)) static int FUNC3(struct stmmac_priv *priv)
{
	struct stmmac_counters initial, final;
	int ret;

	FUNC0(&initial, 0, sizeof(initial));
	FUNC0(&final, 0, sizeof(final));

	if (!priv->dma_cap.rmon)
		return -EOPNOTSUPP;

	/* Save previous results into internal struct */
	FUNC1(priv, priv->mmcaddr, &priv->mmc);

	ret = FUNC2(priv);
	if (ret)
		return ret;

	/* These will be loopback results so no need to save them */
	FUNC1(priv, priv->mmcaddr, &final);

	/*
	 * The number of MMC counters available depends on HW configuration
	 * so we just use this one to validate the feature. I hope there is
	 * not a version without this counter.
	 */
	if (final.mmc_tx_framecount_g <= initial.mmc_tx_framecount_g)
		return -EINVAL;

	return 0;
}