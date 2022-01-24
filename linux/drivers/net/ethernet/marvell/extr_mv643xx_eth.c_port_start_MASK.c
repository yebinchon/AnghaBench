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
struct tx_queue {int dummy; } ;
struct rx_queue {int rx_curr_desc; scalar_t__ rx_desc_dma; } ;
struct rx_desc {int dummy; } ;
struct net_device {int /*<<< orphan*/  features; scalar_t__ phydev; } ;
struct mv643xx_eth_private {int txq_count; int rxq_count; struct rx_queue* rxq; struct net_device* dev; struct tx_queue* txq; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int DO_NOT_FORCE_LINK_FAIL ; 
 int FORCE_LINK_PASS ; 
 int /*<<< orphan*/  PORT_CONFIG_EXT ; 
 int /*<<< orphan*/  PORT_SERIAL_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SERIAL_PORT_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct ethtool_link_ksettings*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct ethtool_link_ksettings const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rx_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct mv643xx_eth_private*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tx_queue*) ; 
 int /*<<< orphan*/  FUNC11 (struct tx_queue*) ; 
 int /*<<< orphan*/  FUNC12 (struct tx_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC14(struct mv643xx_eth_private *mp)
{
	struct net_device *dev = mp->dev;
	u32 pscr;
	int i;

	/*
	 * Perform PHY reset, if there is a PHY.
	 */
	if (dev->phydev) {
		struct ethtool_link_ksettings cmd;

		FUNC1(dev, &cmd);
		FUNC5(dev->phydev);
		FUNC4(
			dev, (const struct ethtool_link_ksettings *)&cmd);
		FUNC6(dev->phydev);
	}

	/*
	 * Configure basic link parameters.
	 */
	pscr = FUNC7(mp, PORT_SERIAL_CONTROL);

	pscr |= SERIAL_PORT_ENABLE;
	FUNC13(mp, PORT_SERIAL_CONTROL, pscr);

	pscr |= DO_NOT_FORCE_LINK_FAIL;
	if (!dev->phydev)
		pscr |= FORCE_LINK_PASS;
	FUNC13(mp, PORT_SERIAL_CONTROL, pscr);

	/*
	 * Configure TX path and queues.
	 */
	FUNC9(mp, 1000000000, 16777216);
	for (i = 0; i < mp->txq_count; i++) {
		struct tx_queue *txq = mp->txq + i;

		FUNC10(txq);
		FUNC12(txq, 1000000000, 16777216);
		FUNC11(txq);
	}

	/*
	 * Receive all unmatched unicast, TCP, UDP, BPDU and broadcast
	 * frames to RX queue #0, and include the pseudo-header when
	 * calculating receive checksums.
	 */
	FUNC3(mp->dev, mp->dev->features);

	/*
	 * Treat BPDUs as normal multicasts, and disable partition mode.
	 */
	FUNC13(mp, PORT_CONFIG_EXT, 0x00000000);

	/*
	 * Add configured unicast addresses to address filter table.
	 */
	FUNC2(mp->dev);

	/*
	 * Enable the receive queues.
	 */
	for (i = 0; i < mp->rxq_count; i++) {
		struct rx_queue *rxq = mp->rxq + i;
		u32 addr;

		addr = (u32)rxq->rx_desc_dma;
		addr += rxq->rx_curr_desc * sizeof(struct rx_desc);
		FUNC13(mp, FUNC0(i), addr);

		FUNC8(rxq);
	}
}