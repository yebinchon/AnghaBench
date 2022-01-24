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
struct ath9k_htc_priv {scalar_t__ ps_usecount; int /*<<< orphan*/  htc_pm_lock; int /*<<< orphan*/  ah; scalar_t__ ps_enabled; scalar_t__ ps_idle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_PM_FULL_SLEEP ; 
 int /*<<< orphan*/  ATH9K_PM_NETWORK_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ath9k_htc_priv *priv)
{
	bool reset;

	FUNC3(&priv->htc_pm_lock);
	if (--priv->ps_usecount != 0)
		goto unlock;

	if (priv->ps_idle) {
		FUNC1(priv->ah, true);
		FUNC2(priv->ah, &reset);
		FUNC0(priv->ah, ATH9K_PM_FULL_SLEEP);
	} else if (priv->ps_enabled) {
		FUNC0(priv->ah, ATH9K_PM_NETWORK_SLEEP);
	}

unlock:
	FUNC4(&priv->htc_pm_lock);
}