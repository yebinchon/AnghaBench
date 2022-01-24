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
struct p54_common {int /*<<< orphan*/  tx_queue; } ;
struct ieee80211_hw {struct p54_common* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct p54_common*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct ieee80211_hw *dev, struct sk_buff *skb)
{
	struct p54_common *priv = dev->priv;
	if (FUNC3(!skb))
		return ;

	FUNC2(skb, &priv->tx_queue);
	FUNC1(priv, skb);
	FUNC0(dev, skb);
}