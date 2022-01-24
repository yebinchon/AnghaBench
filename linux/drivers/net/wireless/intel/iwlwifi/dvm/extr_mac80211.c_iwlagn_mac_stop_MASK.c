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
struct iwl_priv {int /*<<< orphan*/  workqueue; int /*<<< orphan*/  mutex; scalar_t__ is_open; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 struct iwl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw)
{
	struct iwl_priv *priv = FUNC1(hw);

	FUNC0(priv, "enter\n");

	if (!priv->is_open)
		return;

	priv->is_open = 0;

	FUNC5(&priv->mutex);
	FUNC4(priv);
	FUNC6(&priv->mutex);

	FUNC3(priv);

	FUNC2(priv->workqueue);

	FUNC0(priv, "leave\n");
}