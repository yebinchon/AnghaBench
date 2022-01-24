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
struct iwl_priv {int /*<<< orphan*/  hw; int /*<<< orphan*/  trans; int /*<<< orphan*/  beacon_skb; int /*<<< orphan*/ * workqueue; int /*<<< orphan*/  nvm_data; int /*<<< orphan*/  eeprom_blob; } ;
struct iwl_op_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 struct iwl_priv* FUNC1 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct iwl_op_mode *op_mode)
{
	struct iwl_priv *priv = FUNC1(op_mode);

	FUNC0(priv, "*** UNLOAD DRIVER ***\n");

	FUNC9(priv);

	FUNC7(priv);

	FUNC10(priv->eeprom_blob);
	FUNC10(priv->nvm_data);

	/*netif_stop_queue(dev); */
	FUNC4(priv->workqueue);

	/* ieee80211_unregister_hw calls iwlagn_mac_stop, which flushes
	 * priv->workqueue... so we can't take down the workqueue
	 * until now... */
	FUNC2(priv->workqueue);
	priv->workqueue = NULL;

	FUNC8(priv);

	FUNC3(priv->beacon_skb);

	FUNC6(priv->trans);
	FUNC5(priv->hw);
}