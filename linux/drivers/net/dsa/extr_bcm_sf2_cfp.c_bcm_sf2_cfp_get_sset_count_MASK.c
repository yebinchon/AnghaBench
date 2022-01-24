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
struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {int num_cfp_rules; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETH_SS_STATS ; 
 int /*<<< orphan*/  bcm_sf2_cfp_stats ; 
 struct bcm_sf2_priv* FUNC1 (struct dsa_switch*) ; 

int FUNC2(struct dsa_switch *ds, int port, int sset)
{
	struct bcm_sf2_priv *priv = FUNC1(ds);

	if (sset != ETH_SS_STATS)
		return 0;

	/* 3 counters per CFP rules */
	return (priv->num_cfp_rules - 1) * FUNC0(bcm_sf2_cfp_stats);
}