#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; } ;
struct enetc_ndev_priv {scalar_t__ rx_bd_count; scalar_t__ tx_bd_count; TYPE_1__* si; } ;
struct enetc_hw {int dummy; } ;
struct TYPE_2__ {struct enetc_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_RBLENR ; 
 int /*<<< orphan*/  ENETC_TBLENR ; 
 scalar_t__ FUNC0 (struct enetc_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct enetc_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct enetc_ndev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct enetc_ndev_priv*,struct enetc_hw*,struct net_device*,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev,
				struct ethtool_ringparam *ring)
{
	struct enetc_ndev_priv *priv = FUNC2(ndev);

	ring->rx_pending = priv->rx_bd_count;
	ring->tx_pending = priv->tx_bd_count;

	/* do some h/w sanity checks for BDR length */
	if (FUNC4(ndev)) {
		struct enetc_hw *hw = &priv->si->hw;
		u32 val = FUNC0(hw, 0, ENETC_RBLENR);

		if (val != priv->rx_bd_count)
			FUNC3(priv, hw, ndev, "RxBDR[RBLENR] = %d!\n", val);

		val = FUNC1(hw, 0, ENETC_TBLENR);

		if (val != priv->tx_bd_count)
			FUNC3(priv, hw, ndev, "TxBDR[TBLENR] = %d!\n", val);
	}
}