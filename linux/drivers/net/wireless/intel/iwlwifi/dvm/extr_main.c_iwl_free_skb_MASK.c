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
struct sk_buff {int dummy; } ;
struct iwl_priv {int /*<<< orphan*/  hw; int /*<<< orphan*/  trans; } ;
struct iwl_op_mode {int dummy; } ;
struct ieee80211_tx_info {int /*<<< orphan*/ * driver_data; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 struct iwl_priv* FUNC1 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iwl_op_mode *op_mode, struct sk_buff *skb)
{
	struct iwl_priv *priv = FUNC1(op_mode);
	struct ieee80211_tx_info *info;

	info = FUNC0(skb);
	FUNC3(priv->trans, info->driver_data[1]);
	FUNC2(priv->hw, skb);
}