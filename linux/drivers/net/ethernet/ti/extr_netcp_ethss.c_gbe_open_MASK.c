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
typedef  int /*<<< orphan*/  u32 ;
struct netcp_intf {int /*<<< orphan*/  hw_cap; } ;
struct net_device {int dummy; } ;
struct gbe_slave {int port_num; int open; } ;
struct gbe_priv {int /*<<< orphan*/  stats_en_mask; int /*<<< orphan*/  dev; scalar_t__ enable_ale; } ;
struct TYPE_2__ {int switch_to_port; int /*<<< orphan*/  flags; int /*<<< orphan*/  dma_channel; int /*<<< orphan*/  dma_chan_name; } ;
struct gbe_intf {TYPE_1__ tx_pipe; struct gbe_slave* slave; struct gbe_priv* gbe_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_SW_CAN_REMOVE_ETH_FCS ; 
 int /*<<< orphan*/  ETH_SW_CTL_P0_TX_CRC_REMOVE ; 
 int /*<<< orphan*/  GBE_CTL_P0_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gbe_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GBE_RXHOOK_ORDER ; 
 int /*<<< orphan*/  GBE_TXHOOK_ORDER ; 
 scalar_t__ FUNC5 (struct gbe_priv*) ; 
 scalar_t__ FUNC6 (struct gbe_priv*) ; 
 int /*<<< orphan*/  SWITCH_TO_PORT_IN_TAGINFO ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gbe_priv*) ; 
 int /*<<< orphan*/  gbe_rxhook ; 
 int FUNC9 (struct gbe_intf*) ; 
 int /*<<< orphan*/  FUNC10 (struct gbe_intf*) ; 
 int /*<<< orphan*/  gbe_txhook ; 
 int /*<<< orphan*/  id_ver ; 
 int /*<<< orphan*/  FUNC11 (struct gbe_priv*,struct gbe_slave*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct netcp_intf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gbe_intf*) ; 
 int /*<<< orphan*/  FUNC13 (struct netcp_intf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gbe_intf*) ; 
 struct netcp_intf* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  ptype ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stat_port_en ; 
 int /*<<< orphan*/  switch_regs ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(void *intf_priv, struct net_device *ndev)
{
	struct gbe_intf *gbe_intf = intf_priv;
	struct gbe_priv *gbe_dev = gbe_intf->gbe_dev;
	struct netcp_intf *netcp = FUNC14(ndev);
	struct gbe_slave *slave = gbe_intf->slave;
	int port_num = slave->port_num;
	u32 reg, val;
	int ret;

	reg = FUNC15(FUNC3(gbe_dev, switch_regs, id_ver));
	FUNC7(gbe_dev->dev, "initializing gbe version %d.%d (%d) GBE identification value 0x%x\n",
		FUNC1(reg), FUNC2(reg),
		FUNC4(reg), FUNC0(reg));

	/* For 10G and on NetCP 1.5, use directed to port */
	if (FUNC6(gbe_dev) || FUNC5(gbe_dev))
		gbe_intf->tx_pipe.flags = SWITCH_TO_PORT_IN_TAGINFO;

	if (gbe_dev->enable_ale)
		gbe_intf->tx_pipe.switch_to_port = 0;
	else
		gbe_intf->tx_pipe.switch_to_port = port_num;

	FUNC7(gbe_dev->dev,
		"opened TX channel %s: %p with to port %d, flags %d\n",
		gbe_intf->tx_pipe.dma_chan_name,
		gbe_intf->tx_pipe.dma_channel,
		gbe_intf->tx_pipe.switch_to_port,
		gbe_intf->tx_pipe.flags);

	FUNC10(gbe_intf);

	/* disable priority elevation and enable statistics on all ports */
	FUNC16(0, FUNC3(gbe_dev, switch_regs, ptype));

	/* Control register */
	val = GBE_CTL_P0_ENABLE;
	if (FUNC5(gbe_dev)) {
		val |= ETH_SW_CTL_P0_TX_CRC_REMOVE;
		netcp->hw_cap = ETH_SW_CAN_REMOVE_ETH_FCS;
	}
	FUNC16(val, FUNC3(gbe_dev, switch_regs, control));

	/* All statistics enabled and STAT AB visible by default */
	FUNC16(gbe_dev->stats_en_mask, FUNC3(gbe_dev, switch_regs,
						    stat_port_en));

	ret = FUNC9(gbe_intf);
	if (ret)
		goto fail;

	FUNC13(netcp, GBE_TXHOOK_ORDER, gbe_txhook, gbe_intf);
	FUNC12(netcp, GBE_RXHOOK_ORDER, gbe_rxhook, gbe_intf);

	slave->open = true;
	FUNC11(gbe_dev, slave, ndev);

	FUNC8(gbe_dev);

	return 0;

fail:
	FUNC10(gbe_intf);
	return ret;
}