#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_10__ {int /*<<< orphan*/ * irqs; } ;
struct platform_device {int /*<<< orphan*/ * resource; TYPE_4__ dev; TYPE_1__ archdata; } ;
struct net_device {unsigned int* dev_addr; int hw_features; int features; int /*<<< orphan*/ * ethtool_ops; TYPE_3__* netdev_ops; int /*<<< orphan*/  flags; } ;
struct greth_regs {int /*<<< orphan*/  status; int /*<<< orphan*/  esa_lsb; int /*<<< orphan*/  esa_msb; int /*<<< orphan*/  control; int /*<<< orphan*/  mdio; } ;
struct greth_private {int phyaddr; int gbit_mac; int multicast; int edcl; int mdio_int_en; struct greth_regs* regs; int /*<<< orphan*/  mdio; int /*<<< orphan*/  tx_bd_base_phys; void* tx_bd_base; TYPE_4__* dev; int /*<<< orphan*/  rx_bd_base_phys; void* rx_bd_base; int /*<<< orphan*/  napi; int /*<<< orphan*/  irq; int /*<<< orphan*/  devlock; scalar_t__ msg_enable; struct net_device* netdev; } ;
struct TYPE_12__ {int /*<<< orphan*/  ndo_set_rx_mode; int /*<<< orphan*/  ndo_start_xmit; } ;
struct TYPE_11__ {scalar_t__* id_ethaddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GRETH_CTRL_DISDUPLEX ; 
 scalar_t__ GRETH_DEF_MSG_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int GRETH_RESET ; 
 int HZ ; 
 int /*<<< orphan*/  IFF_MULTICAST ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const*) ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,TYPE_4__*) ; 
 struct net_device* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,struct net_device*) ; 
 void* FUNC9 (TYPE_4__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 scalar_t__ greth_debug ; 
 int /*<<< orphan*/  greth_ethtool_ops ; 
 int FUNC12 (struct greth_private*) ; 
 TYPE_3__ greth_netdev_ops ; 
 int /*<<< orphan*/  greth_poll ; 
 int /*<<< orphan*/  greth_set_multicast_list ; 
 int /*<<< orphan*/  greth_start_xmit_gbit ; 
 TYPE_2__* idprom ; 
 int /*<<< orphan*/  FUNC13 (unsigned int*) ; 
 int jiffies ; 
 unsigned int* macaddr ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct greth_private* FUNC15 (struct net_device*) ; 
 scalar_t__ FUNC16 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC18 (int /*<<< orphan*/ ) ; 
 struct greth_regs* FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct greth_regs*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int,unsigned long) ; 

__attribute__((used)) static int FUNC25(struct platform_device *ofdev)
{
	struct net_device *dev;
	struct greth_private *greth;
	struct greth_regs *regs;

	int i;
	int err;
	int tmp;
	unsigned long timeout;

	dev = FUNC5(sizeof(struct greth_private));

	if (dev == NULL)
		return -ENOMEM;

	greth = FUNC15(dev);
	greth->netdev = dev;
	greth->dev = &ofdev->dev;

	if (greth_debug > 0)
		greth->msg_enable = greth_debug;
	else
		greth->msg_enable = GRETH_DEF_MSG_ENABLE;

	FUNC23(&greth->devlock);

	greth->regs = FUNC19(&ofdev->resource[0], 0,
				 FUNC22(&ofdev->resource[0]),
				 "grlib-greth regs");

	if (greth->regs == NULL) {
		if (FUNC16(greth))
			FUNC7(greth->dev, "ioremap failure.\n");
		err = -EIO;
		goto error1;
	}

	regs = greth->regs;
	greth->irq = ofdev->archdata.irqs[0];

	FUNC8(greth->dev, dev);
	FUNC4(dev, greth->dev);

	if (FUNC16(greth))
		FUNC6(greth->dev, "resetting controller.\n");

	/* Reset the controller. */
	FUNC2(regs->control, GRETH_RESET);

	/* Wait for MAC to reset itself */
	timeout = jiffies + HZ/100;
	while (FUNC0(regs->control) & GRETH_RESET) {
		if (FUNC24(jiffies, timeout)) {
			err = -EIO;
			if (FUNC16(greth))
				FUNC7(greth->dev, "timeout when waiting for reset.\n");
			goto error2;
		}
	}

	/* Get default PHY address  */
	greth->phyaddr = (FUNC0(regs->mdio) >> 11) & 0x1F;

	/* Check if we have GBIT capable MAC */
	tmp = FUNC0(regs->control);
	greth->gbit_mac = (tmp >> 27) & 1;

	/* Check for multicast capability */
	greth->multicast = (tmp >> 25) & 1;

	greth->edcl = (tmp >> 31) & 1;

	/* If we have EDCL we disable the EDCL speed-duplex FSM so
	 * it doesn't interfere with the software */
	if (greth->edcl != 0)
		FUNC1(regs->control, GRETH_CTRL_DISDUPLEX);

	/* Check if MAC can handle MDIO interrupts */
	greth->mdio_int_en = (tmp >> 26) & 1;

	err = FUNC12(greth);
	if (err) {
		if (FUNC16(greth))
			FUNC7(greth->dev, "failed to register MDIO bus\n");
		goto error2;
	}

	/* Allocate TX descriptor ring in coherent memory */
	greth->tx_bd_base = FUNC9(greth->dev, 1024,
					       &greth->tx_bd_base_phys,
					       GFP_KERNEL);
	if (!greth->tx_bd_base) {
		err = -ENOMEM;
		goto error3;
	}

	/* Allocate RX descriptor ring in coherent memory */
	greth->rx_bd_base = FUNC9(greth->dev, 1024,
					       &greth->rx_bd_base_phys,
					       GFP_KERNEL);
	if (!greth->rx_bd_base) {
		err = -ENOMEM;
		goto error4;
	}

	/* Get MAC address from: module param, OF property or ID prom */
	for (i = 0; i < 6; i++) {
		if (macaddr[i] != 0)
			break;
	}
	if (i == 6) {
		const u8 *addr;

		addr = FUNC18(ofdev->dev.of_node);
		if (!FUNC3(addr)) {
			for (i = 0; i < 6; i++)
				macaddr[i] = (unsigned int) addr[i];
		} else {
#ifdef CONFIG_SPARC
			for (i = 0; i < 6; i++)
				macaddr[i] = (unsigned int) idprom->id_ethaddr[i];
#endif
		}
	}

	for (i = 0; i < 6; i++)
		dev->dev_addr[i] = macaddr[i];

	macaddr[5]++;

	if (!FUNC13(&dev->dev_addr[0])) {
		if (FUNC16(greth))
			FUNC7(greth->dev, "no valid ethernet address, aborting.\n");
		err = -EINVAL;
		goto error5;
	}

	FUNC2(regs->esa_msb, dev->dev_addr[0] << 8 | dev->dev_addr[1]);
	FUNC2(regs->esa_lsb, dev->dev_addr[2] << 24 | dev->dev_addr[3] << 16 |
		      dev->dev_addr[4] << 8 | dev->dev_addr[5]);

	/* Clear all pending interrupts except PHY irq */
	FUNC2(regs->status, 0xFF);

	if (greth->gbit_mac) {
		dev->hw_features = NETIF_F_SG | NETIF_F_IP_CSUM |
			NETIF_F_RXCSUM;
		dev->features = dev->hw_features | NETIF_F_HIGHDMA;
		greth_netdev_ops.ndo_start_xmit = greth_start_xmit_gbit;
	}

	if (greth->multicast) {
		greth_netdev_ops.ndo_set_rx_mode = greth_set_multicast_list;
		dev->flags |= IFF_MULTICAST;
	} else {
		dev->flags &= ~IFF_MULTICAST;
	}

	dev->netdev_ops = &greth_netdev_ops;
	dev->ethtool_ops = &greth_ethtool_ops;

	err = FUNC21(dev);
	if (err) {
		if (FUNC16(greth))
			FUNC7(greth->dev, "netdevice registration failed.\n");
		goto error5;
	}

	/* setup NAPI */
	FUNC17(dev, &greth->napi, greth_poll, 64);

	return 0;

error5:
	FUNC10(greth->dev, 1024, greth->rx_bd_base, greth->rx_bd_base_phys);
error4:
	FUNC10(greth->dev, 1024, greth->tx_bd_base, greth->tx_bd_base_phys);
error3:
	FUNC14(greth->mdio);
error2:
	FUNC20(&ofdev->resource[0], greth->regs, FUNC22(&ofdev->resource[0]));
error1:
	FUNC11(dev);
	return err;
}