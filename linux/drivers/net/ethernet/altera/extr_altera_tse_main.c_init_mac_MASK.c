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
typedef  unsigned int u32 ;
struct altera_tse_private {unsigned int rx_fifo_depth; unsigned int tx_fifo_depth; int /*<<< orphan*/  device; int /*<<< orphan*/  mac_dev; TYPE_1__* dev; } ;
struct TYPE_2__ {unsigned int mtu; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 unsigned int ALTERA_TSE_PAUSE_QUANTA ; 
 unsigned int ALTERA_TSE_RX_ALMOST_EMPTY ; 
 unsigned int ALTERA_TSE_RX_ALMOST_FULL ; 
 int /*<<< orphan*/  ALTERA_TSE_RX_CMD_STAT_RX_SHIFT16 ; 
 unsigned int ALTERA_TSE_RX_SECTION_EMPTY ; 
 unsigned int ALTERA_TSE_RX_SECTION_FULL ; 
 unsigned int ALTERA_TSE_TX_ALMOST_EMPTY ; 
 unsigned int ALTERA_TSE_TX_ALMOST_FULL ; 
 int ALTERA_TSE_TX_CMD_STAT_OMIT_CRC ; 
 int ALTERA_TSE_TX_CMD_STAT_TX_SHIFT16 ; 
 unsigned int ALTERA_TSE_TX_IPG_LENGTH ; 
 unsigned int ALTERA_TSE_TX_SECTION_EMPTY ; 
 unsigned int ALTERA_TSE_TX_SECTION_FULL ; 
 unsigned int ETH_FCS_LEN ; 
 unsigned int ETH_HLEN ; 
 unsigned int MAC_CMDCFG_CNTL_FRM_ENA ; 
 unsigned int MAC_CMDCFG_CRC_FWD ; 
 unsigned int MAC_CMDCFG_ENA_10 ; 
 unsigned int MAC_CMDCFG_ETH_SPEED ; 
 unsigned int MAC_CMDCFG_HD_ENA ; 
 unsigned int MAC_CMDCFG_PAD_EN ; 
 unsigned int MAC_CMDCFG_RX_ENA ; 
 unsigned int MAC_CMDCFG_RX_ERR_DISC ; 
 unsigned int MAC_CMDCFG_TX_ENA ; 
 unsigned int command_config ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC3 (struct altera_tse_private*) ; 
 unsigned int pause_quanta ; 
 unsigned int rx_almost_empty ; 
 unsigned int rx_almost_full ; 
 unsigned int rx_cmd_stat ; 
 unsigned int rx_section_empty ; 
 unsigned int rx_section_full ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct altera_tse_private*,int /*<<< orphan*/ ) ; 
 unsigned int tx_almost_empty ; 
 unsigned int tx_almost_full ; 
 unsigned int tx_cmd_stat ; 
 unsigned int tx_ipg_length ; 
 unsigned int tx_section_empty ; 
 unsigned int tx_section_full ; 

__attribute__((used)) static int FUNC8(struct altera_tse_private *priv)
{
	unsigned int cmd = 0;
	u32 frm_length;

	/* Setup Rx FIFO */
	FUNC1(priv->rx_fifo_depth - ALTERA_TSE_RX_SECTION_EMPTY,
		priv->mac_dev, FUNC5(rx_section_empty));

	FUNC1(ALTERA_TSE_RX_SECTION_FULL, priv->mac_dev,
		FUNC5(rx_section_full));

	FUNC1(ALTERA_TSE_RX_ALMOST_EMPTY, priv->mac_dev,
		FUNC5(rx_almost_empty));

	FUNC1(ALTERA_TSE_RX_ALMOST_FULL, priv->mac_dev,
		FUNC5(rx_almost_full));

	/* Setup Tx FIFO */
	FUNC1(priv->tx_fifo_depth - ALTERA_TSE_TX_SECTION_EMPTY,
		priv->mac_dev, FUNC5(tx_section_empty));

	FUNC1(ALTERA_TSE_TX_SECTION_FULL, priv->mac_dev,
		FUNC5(tx_section_full));

	FUNC1(ALTERA_TSE_TX_ALMOST_EMPTY, priv->mac_dev,
		FUNC5(tx_almost_empty));

	FUNC1(ALTERA_TSE_TX_ALMOST_FULL, priv->mac_dev,
		FUNC5(tx_almost_full));

	/* MAC Address Configuration */
	FUNC7(priv, priv->dev->dev_addr);

	/* MAC Function Configuration */
	frm_length = ETH_HLEN + priv->dev->mtu + ETH_FCS_LEN;
	FUNC1(frm_length, priv->mac_dev, FUNC5(frm_length));

	FUNC1(ALTERA_TSE_TX_IPG_LENGTH, priv->mac_dev,
		FUNC5(tx_ipg_length));

	/* Disable RX/TX shift 16 for alignment of all received frames on 16-bit
	 * start address
	 */
	FUNC6(priv->mac_dev, FUNC5(rx_cmd_stat),
		    ALTERA_TSE_RX_CMD_STAT_RX_SHIFT16);

	FUNC4(priv->mac_dev, FUNC5(tx_cmd_stat),
		      ALTERA_TSE_TX_CMD_STAT_TX_SHIFT16 |
		      ALTERA_TSE_TX_CMD_STAT_OMIT_CRC);

	/* Set the MAC options */
	cmd = FUNC0(priv->mac_dev, FUNC5(command_config));
	cmd &= ~MAC_CMDCFG_PAD_EN;	/* No padding Removal on Receive */
	cmd &= ~MAC_CMDCFG_CRC_FWD;	/* CRC Removal */
	cmd |= MAC_CMDCFG_RX_ERR_DISC;	/* Automatically discard frames
					 * with CRC errors
					 */
	cmd |= MAC_CMDCFG_CNTL_FRM_ENA;
	cmd &= ~MAC_CMDCFG_TX_ENA;
	cmd &= ~MAC_CMDCFG_RX_ENA;

	/* Default speed and duplex setting, full/100 */
	cmd &= ~MAC_CMDCFG_HD_ENA;
	cmd &= ~MAC_CMDCFG_ETH_SPEED;
	cmd &= ~MAC_CMDCFG_ENA_10;

	FUNC1(cmd, priv->mac_dev, FUNC5(command_config));

	FUNC1(ALTERA_TSE_PAUSE_QUANTA, priv->mac_dev,
		FUNC5(pause_quanta));

	if (FUNC3(priv))
		FUNC2(priv->device,
			"MAC post-initialization: CMD_CONFIG = 0x%08x\n", cmd);

	return 0;
}