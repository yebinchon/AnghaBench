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
struct nps_enet_priv {int ge_mac_cfg_3_value; int /*<<< orphan*/  napi; int /*<<< orphan*/  irq; scalar_t__ ge_mac_cfg_2_value; int /*<<< orphan*/ * tx_skb; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int CFG_3_MAX_LEN_SHIFT ; 
 int CFG_3_RX_IFG_TH_SHIFT ; 
 int NPS_ENET_GE_MAC_CFG_3_MAX_LEN ; 
 int NPS_ENET_GE_MAC_CFG_3_RX_IFG_TH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nps_enet_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  nps_enet_irq_handler ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct net_device*) ; 

__attribute__((used)) static s32 FUNC7(struct net_device *ndev)
{
	struct nps_enet_priv *priv = FUNC1(ndev);
	s32 err;

	/* Reset private variables */
	priv->tx_skb = NULL;
	priv->ge_mac_cfg_2_value = 0;
	priv->ge_mac_cfg_3_value = 0;

	/* ge_mac_cfg_3 default values */
	priv->ge_mac_cfg_3_value |=
		 NPS_ENET_GE_MAC_CFG_3_RX_IFG_TH << CFG_3_RX_IFG_TH_SHIFT;

	priv->ge_mac_cfg_3_value |=
		 NPS_ENET_GE_MAC_CFG_3_MAX_LEN << CFG_3_MAX_LEN_SHIFT;

	/* Disable HW device */
	FUNC3(ndev);

	/* irq Rx allocation */
	err = FUNC6(priv->irq, nps_enet_irq_handler,
			  0, "enet-rx-tx", ndev);
	if (err)
		return err;

	FUNC0(&priv->napi);

	/* Enable HW device */
	FUNC5(ndev);
	FUNC4(ndev);

	FUNC2(ndev);

	return 0;
}