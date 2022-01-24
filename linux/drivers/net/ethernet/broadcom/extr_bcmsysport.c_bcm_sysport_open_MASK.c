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
struct phy_device {int dummy; } ;
struct net_device {unsigned int num_tx_queues; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  features; } ;
struct bcm_sysport_priv {int old_duplex; int old_link; int old_pause; int /*<<< orphan*/  irq0; int /*<<< orphan*/  irq1; int /*<<< orphan*/  is_lite; int /*<<< orphan*/  phy_interface; int /*<<< orphan*/  phy_dn; } ;

/* Variables and functions */
 int CMD_RX_EN ; 
 int CMD_TX_EN ; 
 int ENODEV ; 
 int INTRL2_0_RDMA_MBDONE ; 
 int INTRL2_0_TX_RING_FULL ; 
 int /*<<< orphan*/  TDMA_LL_RAM_INIT_BUSY ; 
 int /*<<< orphan*/  TDMA_STATUS ; 
 int /*<<< orphan*/  UMAC_MAX_FRAME_LEN ; 
 int /*<<< orphan*/  UMAC_MAX_MTU_SIZE ; 
 int /*<<< orphan*/  bcm_sysport_adj_link ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_sysport_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sysport_priv*,unsigned int) ; 
 int FUNC2 (struct bcm_sysport_priv*) ; 
 int FUNC3 (struct bcm_sysport_priv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_sysport_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  bcm_sysport_rx_isr ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm_sysport_tx_isr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct bcm_sysport_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct bcm_sysport_priv*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,...) ; 
 struct bcm_sysport_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 struct phy_device* FUNC13 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct bcm_sysport_priv*) ; 
 int FUNC16 (struct bcm_sysport_priv*,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC18 (struct bcm_sysport_priv*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct bcm_sysport_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct bcm_sysport_priv*) ; 
 int /*<<< orphan*/  FUNC21 (struct bcm_sysport_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct bcm_sysport_priv*) ; 
 int /*<<< orphan*/  FUNC23 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct bcm_sysport_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct net_device *dev)
{
	struct bcm_sysport_priv *priv = FUNC11(dev);
	struct phy_device *phydev;
	unsigned int i;
	int ret;

	/* Reset UniMAC */
	FUNC22(priv);

	/* Flush TX and RX FIFOs at TOPCTRL level */
	FUNC20(priv);

	/* Disable the UniMAC RX/TX */
	FUNC21(priv, CMD_RX_EN | CMD_TX_EN, 0);

	/* Enable RBUF 2bytes alignment and Receive Status Block */
	FUNC15(priv);

	/* Set maximum frame length */
	if (!priv->is_lite)
		FUNC24(priv, UMAC_MAX_MTU_SIZE, UMAC_MAX_FRAME_LEN);
	else
		FUNC8(priv);

	/* Apply features again in case we changed them while interface was
	 * down
	 */
	FUNC6(dev, dev->features);

	/* Set MAC address */
	FUNC23(priv, dev->dev_addr);

	phydev = FUNC13(dev, priv->phy_dn, bcm_sysport_adj_link,
				0, priv->phy_interface);
	if (!phydev) {
		FUNC10(dev, "could not attach to PHY\n");
		return -ENODEV;
	}

	/* Reset house keeping link status */
	priv->old_duplex = -1;
	priv->old_link = -1;
	priv->old_pause = -1;

	/* mask all interrupts and request them */
	FUNC4(priv);

	ret = FUNC17(priv->irq0, bcm_sysport_rx_isr, 0, dev->name, dev);
	if (ret) {
		FUNC10(dev, "failed to request RX interrupt\n");
		goto out_phy_disconnect;
	}

	if (!priv->is_lite) {
		ret = FUNC17(priv->irq1, bcm_sysport_tx_isr, 0,
				  dev->name, dev);
		if (ret) {
			FUNC10(dev, "failed to request TX interrupt\n");
			goto out_free_irq0;
		}
	}

	/* Initialize both hardware and software ring */
	for (i = 0; i < dev->num_tx_queues; i++) {
		ret = FUNC3(priv, i);
		if (ret) {
			FUNC10(dev, "failed to initialize TX ring %d\n",
				   i);
			goto out_free_tx_ring;
		}
	}

	/* Initialize linked-list */
	FUNC19(priv, TDMA_LL_RAM_INIT_BUSY, TDMA_STATUS);

	/* Initialize RX ring */
	ret = FUNC2(priv);
	if (ret) {
		FUNC10(dev, "failed to initialize RX ring\n");
		goto out_free_rx_ring;
	}

	/* Turn on RDMA */
	ret = FUNC16(priv, 1);
	if (ret)
		goto out_free_rx_ring;

	/* Turn on TDMA */
	ret = FUNC18(priv, 1);
	if (ret)
		goto out_clear_rx_int;

	/* Turn on UniMAC TX/RX */
	FUNC21(priv, CMD_RX_EN | CMD_TX_EN, 1);

	FUNC5(dev);

	FUNC12(dev);

	return 0;

out_clear_rx_int:
	FUNC9(priv, INTRL2_0_RDMA_MBDONE | INTRL2_0_TX_RING_FULL);
out_free_rx_ring:
	FUNC0(priv);
out_free_tx_ring:
	for (i = 0; i < dev->num_tx_queues; i++)
		FUNC1(priv, i);
	if (!priv->is_lite)
		FUNC7(priv->irq1, dev);
out_free_irq0:
	FUNC7(priv->irq0, dev);
out_phy_disconnect:
	FUNC14(phydev);
	return ret;
}