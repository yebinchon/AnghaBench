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
struct iwl_priv {struct ieee80211_hw* hw; } ;
struct iwl_op_mode {int dummy; } ;
struct ieee80211_hw {struct iwl_op_mode* priv; } ;

/* Variables and functions */
 struct iwl_priv* FUNC0 (struct iwl_op_mode*) ; 
 struct ieee80211_hw* FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iwlagn_hw_ops ; 

struct ieee80211_hw *FUNC2(void)
{
	struct iwl_priv *priv;
	struct iwl_op_mode *op_mode;
	/* mac80211 allocates memory for this device instance, including
	 *   space for this driver's private structure */
	struct ieee80211_hw *hw;

	hw = FUNC1(sizeof(struct iwl_priv) +
				sizeof(struct iwl_op_mode), &iwlagn_hw_ops);
	if (!hw)
		goto out;

	op_mode = hw->priv;
	priv = FUNC0(op_mode);
	priv->hw = hw;

out:
	return hw;
}