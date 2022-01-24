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
struct net_device {int dummy; } ;
struct lbs_private {scalar_t__ psmode; scalar_t__ psstate; int surpriseremoved; int /*<<< orphan*/  main_thread; int /*<<< orphan*/  host_sleep_q; scalar_t__ is_host_sleep_activated; scalar_t__ is_host_sleep_configured; int /*<<< orphan*/  ds_awake_q; scalar_t__ is_deep_sleep; int /*<<< orphan*/  work_thread; scalar_t__ wiphy_registered; struct net_device* dev; } ;

/* Variables and functions */
 scalar_t__ LBS802_11POWERMODECAM ; 
 scalar_t__ LBS802_11POWERMODEMAX_PSP ; 
 int /*<<< orphan*/  PS_MODE_ACTION_EXIT_PS ; 
 scalar_t__ PS_STATE_FULL_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct lbs_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct lbs_private *priv)
{
	struct net_device *dev = priv->dev;

	FUNC6(priv);

	if (priv->wiphy_registered)
		FUNC7(priv);

	FUNC9(priv);

	/* worker thread destruction blocks on the in-flight command which
	 * should have been cleared already in lbs_stop_card().
	 */
	FUNC4("destroying worker thread\n");
	FUNC0(priv->work_thread);
	FUNC4("done destroying worker thread\n");

	if (priv->psmode == LBS802_11POWERMODEMAX_PSP) {
		priv->psmode = LBS802_11POWERMODECAM;
		/* no need to wakeup if already woken up,
		 * on suspend, this exit ps command is not processed
		 * the driver hangs
		 */
		if (priv->psstate != PS_STATE_FULL_POWER)
			FUNC8(priv, PS_MODE_ACTION_EXIT_PS, true);
	}

	if (priv->is_deep_sleep) {
		priv->is_deep_sleep = 0;
		FUNC10(&priv->ds_awake_q);
	}

	priv->is_host_sleep_configured = 0;
	priv->is_host_sleep_activated = 0;
	FUNC10(&priv->host_sleep_q);

	/* Stop the thread servicing the interrupts */
	priv->surpriseremoved = 1;
	FUNC2(priv->main_thread);

	FUNC5(priv);
	FUNC3(priv);
	FUNC1(dev);
}