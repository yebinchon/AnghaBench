#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct phy_device {TYPE_1__ mdio; int /*<<< orphan*/  asym_pause; int /*<<< orphan*/  pause; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  link; } ;
struct mac_priv_s {int cell_index; int speed; int max_speed; int const* eth_dev; TYPE_2__* fixed_link; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  fman; int /*<<< orphan*/  mc_addr_list; void* internal_phy_node; struct device* dev; } ;
struct mac_device {int phy_if; int if_support; int (* init ) (struct mac_device*) ;int autoneg_pause; int rx_pause_req; int tx_pause_req; int rx_pause_active; int tx_pause_active; int /*<<< orphan*/  addr; struct device_node* phy_node; int /*<<< orphan*/ * port; TYPE_4__* res; struct mac_priv_s* priv; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_6__ {int /*<<< orphan*/  asym_pause; int /*<<< orphan*/  pause; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int DTSEC_SUPPORTED ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int const*) ; 
 int PHY_INTERFACE_MODE_SGMII ; 
 int PHY_INTERFACE_MODE_XGMII ; 
 int SUPPORTED_10000baseT_Full ; 
 int SUPPORTED_1000baseT_Full ; 
 int SUPPORTED_100baseT_Half ; 
 int SUPPORTED_10baseT_Half ; 
 TYPE_4__* FUNC3 (struct device*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,scalar_t__,scalar_t__) ; 
 void* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int const* FUNC9 (int,struct mac_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int const*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int FUNC14 (struct mac_device*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 TYPE_2__* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC18 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct device_node*) ; 
 scalar_t__ FUNC20 (struct device_node*,char*) ; 
 struct platform_device* FUNC21 (struct device_node*) ; 
 int* FUNC22 (struct device_node*) ; 
 struct device_node* FUNC23 (struct device_node*) ; 
 int FUNC24 (struct device_node*) ; 
 struct device_node* FUNC25 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC26 (struct device_node*) ; 
 void* FUNC27 (struct device_node*,char*,int) ; 
 struct phy_device* FUNC28 (struct device_node*) ; 
 scalar_t__ FUNC29 (struct device_node*) ; 
 int FUNC30 (struct device_node*) ; 
 int FUNC31 (struct device_node*,char*,scalar_t__*) ; 
 int* phy2speed ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (struct mac_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct mac_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct mac_device*) ; 
 int FUNC36 (struct mac_device*) ; 
 scalar_t__ FUNC37 (int) ; 

__attribute__((used)) static int FUNC38(struct platform_device *_of_dev)
{
	int			 err, i, nph;
	struct device		*dev;
	struct device_node	*mac_node, *dev_node;
	struct mac_device	*mac_dev;
	struct platform_device	*of_dev;
	struct resource		 res;
	struct mac_priv_s	*priv;
	const u8		*mac_addr;
	u32			 val;
	u8			fman_id;
	int			phy_if;

	dev = &_of_dev->dev;
	mac_node = dev->of_node;

	mac_dev = FUNC8(dev, sizeof(*mac_dev), GFP_KERNEL);
	if (!mac_dev) {
		err = -ENOMEM;
		goto _return;
	}
	priv = FUNC8(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		err = -ENOMEM;
		goto _return;
	}

	/* Save private information */
	mac_dev->priv = priv;
	priv->dev = dev;

	if (FUNC20(mac_node, "fsl,fman-dtsec")) {
		FUNC33(mac_dev);
		priv->internal_phy_node = FUNC27(mac_node,
							  "tbi-handle", 0);
	} else if (FUNC20(mac_node, "fsl,fman-xgec")) {
		FUNC35(mac_dev);
	} else if (FUNC20(mac_node, "fsl,fman-memac")) {
		FUNC34(mac_dev);
		priv->internal_phy_node = FUNC27(mac_node,
							  "pcsphy-handle", 0);
	} else {
		FUNC4(dev, "MAC node (%pOF) contains unsupported MAC\n",
			mac_node);
		err = -EINVAL;
		goto _return;
	}

	FUNC1(&priv->mc_addr_list);

	/* Get the FM node */
	dev_node = FUNC23(mac_node);
	if (!dev_node) {
		FUNC4(dev, "of_get_parent(%pOF) failed\n",
			mac_node);
		err = -EINVAL;
		goto _return_of_get_parent;
	}

	of_dev = FUNC21(dev_node);
	if (!of_dev) {
		FUNC4(dev, "of_find_device_by_node(%pOF) failed\n", dev_node);
		err = -EINVAL;
		goto _return_of_node_put;
	}

	/* Get the FMan cell-index */
	err = FUNC31(dev_node, "cell-index", &val);
	if (err) {
		FUNC4(dev, "failed to read cell-index for %pOF\n", dev_node);
		err = -EINVAL;
		goto _return_of_node_put;
	}
	/* cell-index 0 => FMan id 1 */
	fman_id = (u8)(val + 1);

	priv->fman = FUNC11(&of_dev->dev);
	if (!priv->fman) {
		FUNC4(dev, "fman_bind(%pOF) failed\n", dev_node);
		err = -ENODEV;
		goto _return_of_node_put;
	}

	FUNC26(dev_node);

	/* Get the address of the memory mapped registers */
	err = FUNC17(mac_node, 0, &res);
	if (err < 0) {
		FUNC4(dev, "of_address_to_resource(%pOF) = %d\n",
			mac_node, err);
		goto _return_of_get_parent;
	}

	mac_dev->res = FUNC3(dev,
					     FUNC12(priv->fman),
					     res.start, res.end + 1 - res.start,
					     "mac");
	if (!mac_dev->res) {
		FUNC4(dev, "__devm_request_mem_region(mac) failed\n");
		err = -EBUSY;
		goto _return_of_get_parent;
	}

	priv->vaddr = FUNC7(dev, mac_dev->res->start,
				   mac_dev->res->end + 1 - mac_dev->res->start);
	if (!priv->vaddr) {
		FUNC4(dev, "devm_ioremap() failed\n");
		err = -EIO;
		goto _return_of_get_parent;
	}

	if (!FUNC19(mac_node)) {
		err = -ENODEV;
		goto _return_of_get_parent;
	}

	/* Get the cell-index */
	err = FUNC31(mac_node, "cell-index", &val);
	if (err) {
		FUNC4(dev, "failed to read cell-index for %pOF\n", mac_node);
		err = -EINVAL;
		goto _return_of_get_parent;
	}
	priv->cell_index = (u8)val;

	/* Get the MAC address */
	mac_addr = FUNC22(mac_node);
	if (FUNC2(mac_addr)) {
		FUNC4(dev, "of_get_mac_address(%pOF) failed\n", mac_node);
		err = -EINVAL;
		goto _return_of_get_parent;
	}
	FUNC10(mac_dev->addr, mac_addr);

	/* Get the port handles */
	nph = FUNC18(mac_node, "fsl,fman-ports", NULL);
	if (FUNC37(nph < 0)) {
		FUNC4(dev, "of_count_phandle_with_args(%pOF, fsl,fman-ports) failed\n",
			mac_node);
		err = nph;
		goto _return_of_get_parent;
	}

	if (nph != FUNC0(mac_dev->port)) {
		FUNC4(dev, "Not supported number of fman-ports handles of mac node %pOF from device tree\n",
			mac_node);
		err = -EINVAL;
		goto _return_of_get_parent;
	}

	for (i = 0; i < FUNC0(mac_dev->port); i++) {
		/* Find the port node */
		dev_node = FUNC27(mac_node, "fsl,fman-ports", i);
		if (!dev_node) {
			FUNC4(dev, "of_parse_phandle(%pOF, fsl,fman-ports) failed\n",
				mac_node);
			err = -EINVAL;
			goto _return_of_node_put;
		}

		of_dev = FUNC21(dev_node);
		if (!of_dev) {
			FUNC4(dev, "of_find_device_by_node(%pOF) failed\n",
				dev_node);
			err = -EINVAL;
			goto _return_of_node_put;
		}

		mac_dev->port[i] = FUNC13(&of_dev->dev);
		if (!mac_dev->port[i]) {
			FUNC4(dev, "dev_get_drvdata(%pOF) failed\n",
				dev_node);
			err = -EINVAL;
			goto _return_of_node_put;
		}
		FUNC26(dev_node);
	}

	/* Get the PHY connection type */
	phy_if = FUNC24(mac_node);
	if (phy_if < 0) {
		FUNC6(dev,
			 "of_get_phy_mode() for %pOF failed. Defaulting to SGMII\n",
			 mac_node);
		phy_if = PHY_INTERFACE_MODE_SGMII;
	}
	mac_dev->phy_if = phy_if;

	priv->speed		= phy2speed[mac_dev->phy_if];
	priv->max_speed		= priv->speed;
	mac_dev->if_support	= DTSEC_SUPPORTED;
	/* We don't support half-duplex in SGMII mode */
	if (mac_dev->phy_if == PHY_INTERFACE_MODE_SGMII)
		mac_dev->if_support &= ~(SUPPORTED_10baseT_Half |
					SUPPORTED_100baseT_Half);

	/* Gigabit support (no half-duplex) */
	if (priv->max_speed == 1000)
		mac_dev->if_support |= SUPPORTED_1000baseT_Full;

	/* The 10G interface only supports one mode */
	if (mac_dev->phy_if == PHY_INTERFACE_MODE_XGMII)
		mac_dev->if_support = SUPPORTED_10000baseT_Full;

	/* Get the rest of the PHY information */
	mac_dev->phy_node = FUNC27(mac_node, "phy-handle", 0);
	if (!mac_dev->phy_node && FUNC29(mac_node)) {
		struct phy_device *phy;

		err = FUNC30(mac_node);
		if (err)
			goto _return_of_get_parent;

		priv->fixed_link = FUNC16(sizeof(*priv->fixed_link),
					   GFP_KERNEL);
		if (!priv->fixed_link) {
			err = -ENOMEM;
			goto _return_of_get_parent;
		}

		mac_dev->phy_node = FUNC25(mac_node);
		phy = FUNC28(mac_dev->phy_node);
		if (!phy) {
			err = -EINVAL;
			FUNC26(mac_dev->phy_node);
			goto _return_of_get_parent;
		}

		priv->fixed_link->link = phy->link;
		priv->fixed_link->speed = phy->speed;
		priv->fixed_link->duplex = phy->duplex;
		priv->fixed_link->pause = phy->pause;
		priv->fixed_link->asym_pause = phy->asym_pause;

		FUNC32(&phy->mdio.dev);
	}

	err = mac_dev->init(mac_dev);
	if (err < 0) {
		FUNC4(dev, "mac_dev->init() = %d\n", err);
		FUNC26(mac_dev->phy_node);
		goto _return_of_get_parent;
	}

	/* pause frame autonegotiation enabled */
	mac_dev->autoneg_pause = true;

	/* By intializing the values to false, force FMD to enable PAUSE frames
	 * on RX and TX
	 */
	mac_dev->rx_pause_req = true;
	mac_dev->tx_pause_req = true;
	mac_dev->rx_pause_active = false;
	mac_dev->tx_pause_active = false;
	err = FUNC14(mac_dev, true, true);
	if (err < 0)
		FUNC4(dev, "fman_set_mac_active_pause() = %d\n", err);

	FUNC5(dev, "FMan MAC address: %pM\n", mac_dev->addr);

	priv->eth_dev = FUNC9(fman_id, mac_dev);
	if (FUNC2(priv->eth_dev)) {
		FUNC4(dev, "failed to add Ethernet platform device for MAC %d\n",
			priv->cell_index);
		priv->eth_dev = NULL;
	}

	goto _return;

_return_of_node_put:
	FUNC26(dev_node);
_return_of_get_parent:
	FUNC15(priv->fixed_link);
_return:
	return err;
}