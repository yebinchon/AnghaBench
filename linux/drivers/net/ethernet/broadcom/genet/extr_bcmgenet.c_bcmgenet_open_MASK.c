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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;
struct bcmgenet_priv {int crc_fwd_en; int /*<<< orphan*/  clk; scalar_t__ internal_phy; int /*<<< orphan*/  irq0; int /*<<< orphan*/  irq1; } ;

/* Variables and functions */
 int CMD_CRC_FWD ; 
 int EXT_ENERGY_DET_MASK ; 
 int /*<<< orphan*/  EXT_EXT_PWR_MGMT ; 
 int /*<<< orphan*/  GENET_POWER_PASSIVE ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  UMAC_CMD ; 
 unsigned long FUNC0 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*,unsigned long) ; 
 int FUNC3 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct bcmgenet_priv*) ; 
 int FUNC7 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  bcmgenet_isr0 ; 
 int /*<<< orphan*/  bcmgenet_isr1 ; 
 int FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC18 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*,char*,...) ; 
 struct bcmgenet_priv* FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct bcmgenet_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcmgenet_priv*) ; 

__attribute__((used)) static int FUNC24(struct net_device *dev)
{
	struct bcmgenet_priv *priv = FUNC20(dev);
	unsigned long dma_ctrl;
	u32 reg;
	int ret;

	FUNC21(priv, ifup, dev, "bcmgenet_open\n");

	/* Turn on the clock */
	FUNC16(priv->clk);

	/* If this is an internal GPHY, power it back on now, before UniMAC is
	 * brought out of reset as absolutely no UniMAC activity is allowed
	 */
	if (priv->internal_phy)
		FUNC11(priv, GENET_POWER_PASSIVE);

	/* take MAC out of reset */
	FUNC14(priv);

	FUNC18(priv);

	/* Make sure we reflect the value of CRC_CMD_FWD */
	reg = FUNC13(priv, UMAC_CMD);
	priv->crc_fwd_en = !!(reg & CMD_CRC_FWD);

	FUNC12(priv, dev->dev_addr);

	if (priv->internal_phy) {
		reg = FUNC3(priv, EXT_EXT_PWR_MGMT);
		reg |= EXT_ENERGY_DET_MASK;
		FUNC4(priv, reg, EXT_EXT_PWR_MGMT);
	}

	/* Disable RX/TX DMA and flush TX queues */
	dma_ctrl = FUNC0(priv);

	/* Reinitialize TDMA and RDMA and SW housekeeping */
	ret = FUNC7(priv);
	if (ret) {
		FUNC19(dev, "failed to initialize DMA\n");
		goto err_clk_disable;
	}

	/* Always enable ring 16 - descriptor ring */
	FUNC2(priv, dma_ctrl);

	/* HFB init */
	FUNC6(priv);

	ret = FUNC23(priv->irq0, bcmgenet_isr0, IRQF_SHARED,
			  dev->name, priv);
	if (ret < 0) {
		FUNC19(dev, "can't request IRQ %d\n", priv->irq0);
		goto err_fini_dma;
	}

	ret = FUNC23(priv->irq1, bcmgenet_isr1, IRQF_SHARED,
			  dev->name, priv);
	if (ret < 0) {
		FUNC19(dev, "can't request IRQ %d\n", priv->irq1);
		goto err_irq0;
	}

	ret = FUNC8(dev);
	if (ret) {
		FUNC19(dev, "failed to connect to PHY\n");
		goto err_irq1;
	}

	FUNC9(dev);

	FUNC22(dev);

	return 0;

err_irq1:
	FUNC17(priv->irq1, priv);
err_irq0:
	FUNC17(priv->irq0, priv);
err_fini_dma:
	FUNC1(priv);
	FUNC5(priv);
err_clk_disable:
	if (priv->internal_phy)
		FUNC10(priv, GENET_POWER_PASSIVE);
	FUNC15(priv->clk);
	return ret;
}