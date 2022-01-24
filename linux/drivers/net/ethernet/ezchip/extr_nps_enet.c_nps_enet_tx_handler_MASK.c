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
typedef  int u32 ;
struct nps_enet_priv {int /*<<< orphan*/ * tx_skb; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  NPS_ENET_REG_TX_CTL ; 
 int TX_CTL_ET_MASK ; 
 int TX_CTL_ET_SHIFT ; 
 int TX_CTL_NT_MASK ; 
 int TX_CTL_NT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nps_enet_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nps_enet_priv*) ; 
 int FUNC5 (struct nps_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nps_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct net_device *ndev)
{
	struct nps_enet_priv *priv = FUNC1(ndev);
	u32 tx_ctrl_value = FUNC5(priv, NPS_ENET_REG_TX_CTL);
	u32 tx_ctrl_et = (tx_ctrl_value & TX_CTL_ET_MASK) >> TX_CTL_ET_SHIFT;
	u32 tx_ctrl_nt = (tx_ctrl_value & TX_CTL_NT_MASK) >> TX_CTL_NT_SHIFT;

	/* Check if we got TX */
	if (!FUNC4(priv))
		return;

	/* Ack Tx ctrl register */
	FUNC6(priv, NPS_ENET_REG_TX_CTL, 0);

	/* Check Tx transmit error */
	if (FUNC7(tx_ctrl_et)) {
		ndev->stats.tx_errors++;
	} else {
		ndev->stats.tx_packets++;
		ndev->stats.tx_bytes += tx_ctrl_nt;
	}

	FUNC0(priv->tx_skb);
	priv->tx_skb = NULL;

	if (FUNC2(ndev))
		FUNC3(ndev);
}