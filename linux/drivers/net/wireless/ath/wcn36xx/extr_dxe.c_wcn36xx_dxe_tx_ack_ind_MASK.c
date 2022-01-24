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
typedef  int u32 ;
struct wcn36xx {int /*<<< orphan*/  hw; int /*<<< orphan*/  dxe_lock; struct sk_buff* tx_ack_skb; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  WCN36XX_DBG_DXE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(struct wcn36xx *wcn, u32 status)
{
	struct ieee80211_tx_info *info;
	struct sk_buff *skb;
	unsigned long flags;

	FUNC3(&wcn->dxe_lock, flags);
	skb = wcn->tx_ack_skb;
	wcn->tx_ack_skb = NULL;
	FUNC4(&wcn->dxe_lock, flags);

	if (!skb) {
		FUNC6("Spurious TX complete indication\n");
		return;
	}

	info = FUNC0(skb);

	if (status == 1)
		info->flags |= IEEE80211_TX_STAT_ACK;

	FUNC5(WCN36XX_DBG_DXE, "dxe tx ack status: %d\n", status);

	FUNC1(wcn->hw, skb);
	FUNC2(wcn->hw);
}