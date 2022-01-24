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
struct iwl_priv {scalar_t__ mac80211_registered; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*) ; 

void FUNC2(struct iwl_priv *priv)
{
	if (!priv->mac80211_registered)
		return;
	FUNC1(priv);
	FUNC0(priv->hw);
	priv->mac80211_registered = 0;
}