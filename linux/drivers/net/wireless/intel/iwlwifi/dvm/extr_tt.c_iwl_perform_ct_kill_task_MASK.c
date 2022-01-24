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
struct TYPE_2__ {int /*<<< orphan*/  ct_kill_exit_tm; } ;
struct iwl_priv {int /*<<< orphan*/  hw; scalar_t__ mac80211_registered; TYPE_1__ thermal_throttle; } ;

/* Variables and functions */
 int CT_KILL_EXIT_DURATION ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct iwl_priv *priv,
			   bool stop)
{
	if (stop) {
		FUNC0(priv, "Stop all queues\n");
		if (priv->mac80211_registered)
			FUNC1(priv->hw);
		FUNC0(priv,
				"Schedule 5 seconds CT_KILL Timer\n");
		FUNC3(&priv->thermal_throttle.ct_kill_exit_tm,
			  jiffies + CT_KILL_EXIT_DURATION * HZ);
	} else {
		FUNC0(priv, "Wake all queues\n");
		if (priv->mac80211_registered)
			FUNC2(priv->hw);
	}
}