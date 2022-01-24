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
typedef  int /*<<< orphan*/  u8 ;
struct ipw2100_priv {int config; int /*<<< orphan*/  tx_power; int /*<<< orphan*/  beacon_interval; TYPE_1__* ieee; int /*<<< orphan*/  essid_len; int /*<<< orphan*/ * essid; int /*<<< orphan*/ * bssid; int /*<<< orphan*/  rts_threshold; int /*<<< orphan*/  tx_rates; int /*<<< orphan*/  channel; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;

/* Variables and functions */
 int CFG_STATIC_BSSID ; 
 int CFG_STATIC_ESSID ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPW_POWER_MODE_CAM ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_MONITOR ; 
 int FUNC1 (struct ipw2100_priv*,int) ; 
 int FUNC2 (struct ipw2100_priv*) ; 
 int FUNC3 (struct ipw2100_priv*) ; 
 int FUNC4 (struct ipw2100_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ipw2100_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct ipw2100_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ipw2100_priv*,int) ; 
 int FUNC8 (struct ipw2100_priv*,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct ipw2100_priv*,scalar_t__,int) ; 
 int FUNC10 (struct ipw2100_priv*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ipw2100_priv*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ipw2100_priv*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ipw2100_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct ipw2100_priv*,int) ; 

__attribute__((used)) static int FUNC15(struct ipw2100_priv *priv)
{
	int err;
	int batch_mode = 1;
	u8 *bssid;

	FUNC0("enter\n");

	err = FUNC2(priv);
	if (err)
		return err;
#ifdef CONFIG_IPW2100_MONITOR
	if (priv->ieee->iw_mode == IW_MODE_MONITOR) {
		err = ipw2100_set_channel(priv, priv->channel, batch_mode);
		if (err)
			return err;

		IPW_DEBUG_INFO("exit\n");

		return 0;
	}
#endif				/* CONFIG_IPW2100_MONITOR */

	err = FUNC3(priv);
	if (err)
		return -EIO;

	err = FUNC7(priv, batch_mode);
	if (err)
		return err;

	err = FUNC9(priv, priv->ieee->iw_mode, batch_mode);
	if (err)
		return err;

	if (priv->ieee->iw_mode == IW_MODE_ADHOC) {
		err = FUNC4(priv, priv->channel, batch_mode);
		if (err)
			return err;
	}

	err = FUNC14(priv, batch_mode);
	if (err)
		return err;

	err = FUNC13(priv, priv->tx_rates, batch_mode);
	if (err)
		return err;

	/* Default to power mode OFF */
	err = FUNC10(priv, IPW_POWER_MODE_CAM);
	if (err)
		return err;

	err = FUNC11(priv, priv->rts_threshold);
	if (err)
		return err;

	if (priv->config & CFG_STATIC_BSSID)
		bssid = priv->bssid;
	else
		bssid = NULL;
	err = FUNC8(priv, bssid, batch_mode);
	if (err)
		return err;

	if (priv->config & CFG_STATIC_ESSID)
		err = FUNC5(priv, priv->essid, priv->essid_len,
					batch_mode);
	else
		err = FUNC5(priv, NULL, 0, batch_mode);
	if (err)
		return err;

	err = FUNC1(priv, batch_mode);
	if (err)
		return err;

	if (priv->ieee->iw_mode == IW_MODE_ADHOC) {
		err =
		    FUNC6(priv,
						     priv->beacon_interval,
						     batch_mode);
		if (err)
			return err;

		err = FUNC12(priv, priv->tx_power);
		if (err)
			return err;
	}

	/*
	   err = ipw2100_set_fragmentation_threshold(
	   priv, priv->frag_threshold, batch_mode);
	   if (err)
	   return err;
	 */

	FUNC0("exit\n");

	return 0;
}