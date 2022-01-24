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
struct p54s_tx_info {int /*<<< orphan*/  tx_list; } ;
struct p54s_priv {int /*<<< orphan*/  work; int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_pending; } ;
struct p54_tx_info {scalar_t__ data; } ;
struct ieee80211_tx_info {scalar_t__ rate_driver_data; } ;
struct ieee80211_hw {struct p54s_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *dev, struct sk_buff *skb)
{
	struct p54s_priv *priv = dev->priv;
	struct ieee80211_tx_info *info = FUNC1(skb);
	struct p54_tx_info *mi = (struct p54_tx_info *) info->rate_driver_data;
	struct p54s_tx_info *di = (struct p54s_tx_info *) mi->data;
	unsigned long flags;

	FUNC0(sizeof(*di) > sizeof((mi->data)));

	FUNC4(&priv->tx_lock, flags);
	FUNC3(&di->tx_list, &priv->tx_pending);
	FUNC5(&priv->tx_lock, flags);

	FUNC2(priv->hw, &priv->work);
}