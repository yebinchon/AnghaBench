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
struct p54_common {int /*<<< orphan*/ * survey; int /*<<< orphan*/ * used_rxkeys; int /*<<< orphan*/ * rssi_db; int /*<<< orphan*/ * curve_data; int /*<<< orphan*/ * output_limit; int /*<<< orphan*/ * iq_autocal; int /*<<< orphan*/ ** band_table; } ;
struct ieee80211_hw {struct p54_common* priv; } ;

/* Variables and functions */
 unsigned int NUM_NL80211_BANDS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ieee80211_hw *dev)
{
	struct p54_common *priv = dev->priv;
	unsigned int i;

	for (i = 0; i < NUM_NL80211_BANDS; i++)
		FUNC1(priv->band_table[i]);

	FUNC1(priv->iq_autocal);
	FUNC1(priv->output_limit);
	FUNC1(priv->curve_data);
	FUNC1(priv->rssi_db);
	FUNC1(priv->used_rxkeys);
	FUNC1(priv->survey);
	priv->iq_autocal = NULL;
	priv->output_limit = NULL;
	priv->curve_data = NULL;
	priv->rssi_db = NULL;
	priv->used_rxkeys = NULL;
	priv->survey = NULL;
	FUNC0(dev);
}