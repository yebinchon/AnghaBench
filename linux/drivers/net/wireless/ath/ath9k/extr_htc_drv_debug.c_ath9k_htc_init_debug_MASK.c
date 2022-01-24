#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  debugfs_phy; int /*<<< orphan*/  rx_stats; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  ah; TYPE_3__ debug; int /*<<< orphan*/  spec_priv; TYPE_2__* hw; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int /*<<< orphan*/  debugfsdir; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ,struct ath9k_htc_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_debug ; 
 int /*<<< orphan*/  fops_queue ; 
 int /*<<< orphan*/  fops_skb_rx ; 
 int /*<<< orphan*/  fops_slot ; 
 int /*<<< orphan*/  fops_tgt_int_stats ; 
 int /*<<< orphan*/  fops_tgt_rx_stats ; 
 int /*<<< orphan*/  fops_tgt_tx_stats ; 
 int /*<<< orphan*/  fops_xmit ; 

int FUNC8(struct ath_hw *ah)
{
	struct ath_common *common = FUNC5(ah);
	struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

	priv->debug.debugfs_phy = FUNC6(KBUILD_MODNAME,
					     priv->hw->wiphy->debugfsdir);
	if (!priv->debug.debugfs_phy)
		return -ENOMEM;

	FUNC4(&priv->spec_priv, priv->debug.debugfs_phy);

	FUNC7("tgt_int_stats", 0400, priv->debug.debugfs_phy,
			    priv, &fops_tgt_int_stats);
	FUNC7("tgt_tx_stats", 0400, priv->debug.debugfs_phy,
			    priv, &fops_tgt_tx_stats);
	FUNC7("tgt_rx_stats", 0400, priv->debug.debugfs_phy,
			    priv, &fops_tgt_rx_stats);
	FUNC7("xmit", 0400, priv->debug.debugfs_phy,
			    priv, &fops_xmit);
	FUNC7("skb_rx", 0400, priv->debug.debugfs_phy,
			    priv, &fops_skb_rx);

	FUNC3(priv->debug.debugfs_phy, &priv->debug.rx_stats);
	FUNC2(priv->debug.debugfs_phy, &priv->debug.rx_stats);

	FUNC7("slot", 0400, priv->debug.debugfs_phy,
			    priv, &fops_slot);
	FUNC7("queue", 0400, priv->debug.debugfs_phy,
			    priv, &fops_queue);
	FUNC7("debug", 0600, priv->debug.debugfs_phy,
			    priv, &fops_debug);

	FUNC0(priv->debug.debugfs_phy, priv->ah);
	FUNC1(priv->debug.debugfs_phy, priv->ah);

	return 0;
}