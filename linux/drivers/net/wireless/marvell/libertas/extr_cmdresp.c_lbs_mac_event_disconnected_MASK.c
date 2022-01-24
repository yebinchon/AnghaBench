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
struct lbs_private {scalar_t__ connect_status; scalar_t__ psstate; int /*<<< orphan*/  driver_lock; scalar_t__ tx_pending_len; int /*<<< orphan*/ * currenttxskb; int /*<<< orphan*/  dev; TYPE_1__* wdev; } ;
struct TYPE_2__ {scalar_t__ iftype; } ;

/* Variables and functions */
 scalar_t__ LBS_CONNECTED ; 
 scalar_t__ LBS_DISCONNECTED ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  PS_MODE_ACTION_EXIT_PS ; 
 scalar_t__ PS_STATE_FULL_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct lbs_private *priv,
				bool locally_generated)
{
	unsigned long flags;

	if (priv->connect_status != LBS_CONNECTED)
		return;

	/*
	 * Cisco AP sends EAP failure and de-auth in less than 0.5 ms.
	 * It causes problem in the Supplicant
	 */
	FUNC4(1000);

	if (priv->wdev->iftype == NL80211_IFTYPE_STATION)
		FUNC2(priv, locally_generated);

	/* report disconnect to upper layer */
	FUNC6(priv->dev);
	FUNC5(priv->dev);

	/* Free Tx and Rx packets */
	FUNC7(&priv->driver_lock, flags);
	FUNC0(priv->currenttxskb);
	priv->currenttxskb = NULL;
	priv->tx_pending_len = 0;
	FUNC8(&priv->driver_lock, flags);

	priv->connect_status = LBS_DISCONNECTED;

	if (priv->psstate != PS_STATE_FULL_POWER) {
		/* make firmware to exit PS mode */
		FUNC1("disconnected, so exit PS mode\n");
		FUNC3(priv, PS_MODE_ACTION_EXIT_PS, false);
	}
}