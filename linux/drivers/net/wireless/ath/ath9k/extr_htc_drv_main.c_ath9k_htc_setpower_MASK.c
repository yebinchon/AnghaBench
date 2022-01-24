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
struct ath9k_htc_priv {int /*<<< orphan*/  htc_pm_lock; int /*<<< orphan*/  ah; } ;
typedef  enum ath9k_power_mode { ____Placeholder_ath9k_power_mode } ath9k_power_mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct ath9k_htc_priv *priv,
			enum ath9k_power_mode mode)
{
	bool ret;

	FUNC1(&priv->htc_pm_lock);
	ret = FUNC0(priv->ah, mode);
	FUNC2(&priv->htc_pm_lock);

	return ret;
}