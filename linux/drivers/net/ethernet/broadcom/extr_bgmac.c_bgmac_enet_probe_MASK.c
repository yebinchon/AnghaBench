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
struct net_device {int features; int hw_features; int vlan_features; int /*<<< orphan*/  phydev; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  irq; } ;
struct bgmac {int feature_flags; int int_mask; int /*<<< orphan*/  dev; struct net_device* net_dev; int /*<<< orphan*/  napi; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_OOB_SEL_OUT_A30 ; 
 int BGMAC_FEAT_IDM_MASK ; 
 int BGMAC_FEAT_IRQ_ID_OOB_6 ; 
 int BGMAC_IS_ERRMASK ; 
 int BGMAC_IS_RX ; 
 int BGMAC_IS_TX_MASK ; 
 int /*<<< orphan*/  BGMAC_WEIGHT ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bgmac*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC6 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC7 (struct bgmac*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct bgmac*) ; 
 int /*<<< orphan*/  bgmac_poll ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct bgmac*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct net_device*) ; 

int FUNC18(struct bgmac *bgmac)
{
	struct net_device *net_dev = bgmac->net_dev;
	int err;

	FUNC2(bgmac);

	net_dev->irq = bgmac->irq;
	FUNC0(net_dev, bgmac->dev);
	FUNC10(bgmac->dev, bgmac);

	if (!FUNC13(net_dev->dev_addr)) {
		FUNC9(bgmac->dev, "Invalid MAC addr: %pM\n",
			net_dev->dev_addr);
		FUNC12(net_dev);
		FUNC11(bgmac->dev, "Using random MAC: %pM\n",
			 net_dev->dev_addr);
	}

	/* This (reset &) enable is not preset in specs or reference driver but
	 * Broadcom does it in arch PCI code when enabling fake PCI device.
	 */
	FUNC4(bgmac, 0);

	/* This seems to be fixing IRQ by assigning OOB #6 to the core */
	if (!(bgmac->feature_flags & BGMAC_FEAT_IDM_MASK)) {
		if (bgmac->feature_flags & BGMAC_FEAT_IRQ_ID_OOB_6)
			FUNC7(bgmac, BCMA_OOB_SEL_OUT_A30, 0x86);
	}

	FUNC3(bgmac);

	err = FUNC5(bgmac);
	if (err) {
		FUNC9(bgmac->dev, "Unable to alloc memory for DMA\n");
		goto err_out;
	}

	bgmac->int_mask = BGMAC_IS_ERRMASK | BGMAC_IS_RX | BGMAC_IS_TX_MASK;
	if (FUNC1("et0_no_txint", NULL, 0) == 0)
		bgmac->int_mask &= ~BGMAC_IS_TX_MASK;

	FUNC15(net_dev, &bgmac->napi, bgmac_poll, BGMAC_WEIGHT);

	err = FUNC8(bgmac);
	if (err) {
		FUNC9(bgmac->dev, "Cannot connect to phy\n");
		goto err_dma_free;
	}

	net_dev->features = NETIF_F_SG | NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
	net_dev->hw_features = net_dev->features;
	net_dev->vlan_features = net_dev->features;

	err = FUNC17(bgmac->net_dev);
	if (err) {
		FUNC9(bgmac->dev, "Cannot register net device\n");
		goto err_phy_disconnect;
	}

	FUNC14(net_dev);

	return 0;

err_phy_disconnect:
	FUNC16(net_dev->phydev);
err_dma_free:
	FUNC6(bgmac);
err_out:

	return err;
}