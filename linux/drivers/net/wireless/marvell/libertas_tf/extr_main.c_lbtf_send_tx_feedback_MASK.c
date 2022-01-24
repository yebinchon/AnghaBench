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
typedef  int /*<<< orphan*/  u8 ;
struct txpd {int dummy; } ;
struct lbtf_private {int /*<<< orphan*/  tx_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  bc_ps_buf; int /*<<< orphan*/  skb_to_tx; int /*<<< orphan*/ * tx_skb; } ;
struct ieee80211_tx_info {int flags; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lbtf_wq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct lbtf_private *priv, u8 retrycnt, u8 fail)
{
	struct ieee80211_tx_info *info = FUNC0(priv->tx_skb);

	FUNC1(info);
	/*
	 * Commented out, otherwise we never go beyond 1Mbit/s using mac80211
	 * default pid rc algorithm.
	 *
	 * info->status.retry_count = MRVL_DEFAULT_RETRIES - retrycnt;
	 */
	if (!(info->flags & IEEE80211_TX_CTL_NO_ACK) && !fail)
		info->flags |= IEEE80211_TX_STAT_ACK;
	FUNC5(priv->tx_skb, sizeof(struct txpd));
	FUNC2(priv->hw, priv->tx_skb);
	priv->tx_skb = NULL;
	if (!priv->skb_to_tx && FUNC6(&priv->bc_ps_buf))
		FUNC3(priv->hw);
	else
		FUNC4(lbtf_wq, &priv->tx_work);
}