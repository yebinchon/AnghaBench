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
typedef  int /*<<< orphan*/  uint64_t ;
struct dsa_switch {int dummy; } ;
struct cfp_rule {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct bcm_sf2_priv {unsigned int num_cfp_rules; TYPE_1__ cfp; } ;
struct bcm_sf2_cfp_stat {int ram_loc; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bcm_sf2_cfp_stat*) ; 
 int OP_SEL_READ ; 
 int FUNC1 (struct bcm_sf2_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_sf2_priv*,unsigned int) ; 
 struct cfp_rule* FUNC3 (struct bcm_sf2_priv*,int,unsigned int) ; 
 struct bcm_sf2_cfp_stat* bcm_sf2_cfp_stats ; 
 struct bcm_sf2_priv* FUNC4 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_sf2_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct dsa_switch *ds, int port,
				   uint64_t *data)
{
	struct bcm_sf2_priv *priv = FUNC4(ds);
	unsigned int s = FUNC0(bcm_sf2_cfp_stats);
	const struct bcm_sf2_cfp_stat *stat;
	unsigned int i, j, iter;
	struct cfp_rule *rule;
	int ret;

	FUNC6(&priv->cfp.lock);
	for (i = 1; i < priv->num_cfp_rules; i++) {
		rule = FUNC3(priv, port, i);
		if (!rule)
			continue;

		for (j = 0; j < s; j++) {
			stat = &bcm_sf2_cfp_stats[j];

			FUNC2(priv, i);
			ret = FUNC1(priv, stat->ram_loc | OP_SEL_READ);
			if (ret)
				continue;

			iter = (i - 1) * s + j;
			data[iter] = FUNC5(priv, stat->offset);
		}

	}
	FUNC7(&priv->cfp.lock);
}