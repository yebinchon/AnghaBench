#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct phy_device {int /*<<< orphan*/  interface; } ;
struct cpsw_slave {int /*<<< orphan*/  slave_num; struct phy_device* phy; TYPE_2__* data; scalar_t__ mac_control; int /*<<< orphan*/  mac_sl; } ;
struct cpsw_priv {int /*<<< orphan*/  dev; TYPE_3__* ndev; struct cpsw_common* cpsw; } ;
struct TYPE_5__ {scalar_t__ dual_emac; } ;
struct cpsw_common {int version; int /*<<< orphan*/  dev; int /*<<< orphan*/  ale; TYPE_1__ data; int /*<<< orphan*/  rx_packet_max; } ;
struct TYPE_7__ {int /*<<< orphan*/  broadcast; } ;
struct TYPE_6__ {int /*<<< orphan*/  phy_if; struct phy_device* ifphy; int /*<<< orphan*/  phy_id; scalar_t__ phy_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_MCAST_FWD_2 ; 
 int /*<<< orphan*/  CPSW1_MAX_BLKS ; 
 int /*<<< orphan*/  CPSW1_TX_PRI_MAP ; 
 int /*<<< orphan*/  CPSW2_MAX_BLKS ; 
 int /*<<< orphan*/  CPSW2_TX_PRI_MAP ; 
 int CPSW_MAX_BLKS_RX ; 
 int CPSW_MAX_BLKS_TX ; 
 int CPSW_MAX_BLKS_TX_SHIFT ; 
 int /*<<< orphan*/  CPSW_SL_RX_MAXLEN ; 
 int /*<<< orphan*/  CPSW_SL_RX_PRI_MAP ; 
#define  CPSW_VERSION_1 131 
#define  CPSW_VERSION_2 130 
#define  CPSW_VERSION_3 129 
#define  CPSW_VERSION_4 128 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  PHY_MODE_ETHERNET ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  RX_PRIORITY_MAPPING ; 
 int TX_PRIORITY_MAPPING ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_priv*,struct cpsw_slave*,int) ; 
 int /*<<< orphan*/  cpsw_adjust_link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cpsw_slave*,struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct phy_device* FUNC11 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct phy_device*) ; 
 struct phy_device* FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct cpsw_slave*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct cpsw_slave *slave, struct cpsw_priv *priv)
{
	u32 slave_port;
	struct phy_device *phy;
	struct cpsw_common *cpsw = priv->cpsw;

	FUNC9(slave->mac_sl, 100);
	FUNC7(slave->mac_sl);

	/* setup priority mapping */
	FUNC8(slave->mac_sl, CPSW_SL_RX_PRI_MAP,
			  RX_PRIORITY_MAPPING);

	switch (cpsw->version) {
	case CPSW_VERSION_1:
		FUNC16(slave, TX_PRIORITY_MAPPING, CPSW1_TX_PRI_MAP);
		/* Increase RX FIFO size to 5 for supporting fullduplex
		 * flow control mode
		 */
		FUNC16(slave,
			    (CPSW_MAX_BLKS_TX << CPSW_MAX_BLKS_TX_SHIFT) |
			    CPSW_MAX_BLKS_RX, CPSW1_MAX_BLKS);
		break;
	case CPSW_VERSION_2:
	case CPSW_VERSION_3:
	case CPSW_VERSION_4:
		FUNC16(slave, TX_PRIORITY_MAPPING, CPSW2_TX_PRI_MAP);
		/* Increase RX FIFO size to 5 for supporting fullduplex
		 * flow control mode
		 */
		FUNC16(slave,
			    (CPSW_MAX_BLKS_TX << CPSW_MAX_BLKS_TX_SHIFT) |
			    CPSW_MAX_BLKS_RX, CPSW2_MAX_BLKS);
		break;
	}

	/* setup max packet size, and mac address */
	FUNC8(slave->mac_sl, CPSW_SL_RX_MAXLEN,
			  cpsw->rx_packet_max);
	FUNC6(slave, priv);

	slave->mac_control = 0;	/* no link yet */

	slave_port = FUNC4(slave->slave_num);

	if (cpsw->data.dual_emac)
		FUNC2(priv, slave, slave_port);
	else
		FUNC3(cpsw->ale, priv->ndev->broadcast,
				   1 << slave_port, 0, 0, ALE_MCAST_FWD_2);

	if (slave->data->phy_node) {
		phy = FUNC11(priv->ndev, slave->data->phy_node,
				 &cpsw_adjust_link, 0, slave->data->phy_if);
		if (!phy) {
			FUNC10(priv->dev, "phy \"%pOF\" not found on slave %d\n",
				slave->data->phy_node,
				slave->slave_num);
			return;
		}
	} else {
		phy = FUNC13(priv->ndev, slave->data->phy_id,
				 &cpsw_adjust_link, slave->data->phy_if);
		if (FUNC0(phy)) {
			FUNC10(priv->dev,
				"phy \"%s\" not found on slave %d, err %ld\n",
				slave->data->phy_id, slave->slave_num,
				FUNC1(phy));
			return;
		}
	}

	slave->phy = phy;

	FUNC12(slave->phy);

	FUNC15(slave->phy);

	/* Configure GMII_SEL register */
	if (!FUNC0(slave->data->ifphy))
		FUNC14(slave->data->ifphy, PHY_MODE_ETHERNET,
				 slave->data->phy_if);
	else
		FUNC5(cpsw->dev, slave->phy->interface,
			     slave->slave_num);
}