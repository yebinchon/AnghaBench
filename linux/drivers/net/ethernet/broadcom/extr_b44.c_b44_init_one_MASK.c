#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ssb_device_id {int dummy; } ;
struct ssb_device {int /*<<< orphan*/  bus; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_dev; int /*<<< orphan*/  irq; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  irq; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  features; } ;
struct TYPE_4__ {scalar_t__ phy_id; int phy_id_mask; int reg_num_mask; int /*<<< orphan*/  mdio_write; int /*<<< orphan*/  mdio_read; struct net_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  syncp; } ;
struct b44 {scalar_t__ phy_addr; int flags; int /*<<< orphan*/  napi; TYPE_2__ mii_if; int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  rx_pending; TYPE_1__ hw_stats; int /*<<< orphan*/  lock; int /*<<< orphan*/  msg_enable; scalar_t__ force_copybreak; struct net_device* dev; struct ssb_device* sdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_CHIP_RESET_FULL ; 
 int /*<<< orphan*/  B44_DEF_MSG_ENABLE ; 
 int /*<<< orphan*/  B44_DEF_RX_RING_PENDING ; 
 int /*<<< orphan*/  B44_DEF_TX_RING_PENDING ; 
 int B44_FLAG_ADV_100FULL ; 
 int B44_FLAG_ADV_100HALF ; 
 int B44_FLAG_ADV_10FULL ; 
 int B44_FLAG_ADV_10HALF ; 
 int B44_FLAG_EXTERNAL_PHY ; 
 int B44_FLAG_PAUSE_AUTO ; 
 int /*<<< orphan*/  B44_MAX_MTU ; 
 int /*<<< orphan*/  B44_MIN_MTU ; 
 scalar_t__ B44_PHY_ADDR_NO_PHY ; 
 int /*<<< orphan*/  B44_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_DESCRIPTION ; 
 int /*<<< orphan*/  DRV_MODULE_VERSION ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b44_debug ; 
 int /*<<< orphan*/  b44_ethtool_ops ; 
 int FUNC4 (struct b44*) ; 
 int /*<<< orphan*/  b44_mdio_read_mii ; 
 int /*<<< orphan*/  b44_mdio_write_mii ; 
 int /*<<< orphan*/  b44_netdev_ops ; 
 int FUNC5 (struct b44*) ; 
 int /*<<< orphan*/  b44_poll ; 
 int FUNC6 (struct b44*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  instance ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct b44* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ssb_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 

__attribute__((used)) static int FUNC25(struct ssb_device *sdev,
			const struct ssb_device_id *ent)
{
	struct net_device *dev;
	struct b44 *bp;
	int err;

	instance++;

	FUNC17("%s version %s\n", DRV_DESCRIPTION, DRV_MODULE_VERSION);

	dev = FUNC2(sizeof(*bp));
	if (!dev) {
		err = -ENOMEM;
		goto out;
	}

	FUNC1(dev, sdev->dev);

	/* No interesting netdevice features in this card... */
	dev->features |= 0;

	bp = FUNC12(dev);
	bp->sdev = sdev;
	bp->dev = dev;
	bp->force_copybreak = 0;

	bp->msg_enable = FUNC14(b44_debug, B44_DEF_MSG_ENABLE);

	FUNC19(&bp->lock);
	FUNC23(&bp->hw_stats.syncp);

	bp->rx_pending = B44_DEF_RX_RING_PENDING;
	bp->tx_pending = B44_DEF_TX_RING_PENDING;

	dev->netdev_ops = &b44_netdev_ops;
	FUNC15(dev, &bp->napi, b44_poll, 64);
	dev->watchdog_timeo = B44_TX_TIMEOUT;
	dev->min_mtu = B44_MIN_MTU;
	dev->max_mtu = B44_MAX_MTU;
	dev->irq = sdev->irq;
	dev->ethtool_ops = &b44_ethtool_ops;

	err = FUNC21(sdev->bus, 0);
	if (err) {
		FUNC7(sdev->dev,
			"Failed to powerup the bus\n");
		goto err_out_free_dev;
	}

	if (FUNC9(sdev->dma_dev, FUNC0(30))) {
		FUNC7(sdev->dev,
			"Required 30BIT DMA mask unsupported by the system\n");
		goto err_out_powerdown;
	}

	err = FUNC4(bp);
	if (err) {
		FUNC7(sdev->dev,
			"Problem fetching invariants of chip, aborting\n");
		goto err_out_powerdown;
	}

	if (bp->phy_addr == B44_PHY_ADDR_NO_PHY) {
		FUNC7(sdev->dev, "No PHY present on this MAC, aborting\n");
		err = -ENODEV;
		goto err_out_powerdown;
	}

	bp->mii_if.dev = dev;
	bp->mii_if.mdio_read = b44_mdio_read_mii;
	bp->mii_if.mdio_write = b44_mdio_write_mii;
	bp->mii_if.phy_id = bp->phy_addr;
	bp->mii_if.phy_id_mask = 0x1f;
	bp->mii_if.reg_num_mask = 0x1f;

	/* By default, advertise all speed/duplex settings. */
	bp->flags |= (B44_FLAG_ADV_10HALF | B44_FLAG_ADV_10FULL |
		      B44_FLAG_ADV_100HALF | B44_FLAG_ADV_100FULL);

	/* By default, auto-negotiate PAUSE. */
	bp->flags |= B44_FLAG_PAUSE_AUTO;

	err = FUNC18(dev);
	if (err) {
		FUNC7(sdev->dev, "Cannot register net device, aborting\n");
		goto err_out_powerdown;
	}

	FUNC13(dev);

	FUNC22(sdev, dev);

	/* Chip reset provides power to the b44 MAC & PCI cores, which
	 * is necessary for MAC register access.
	 */
	FUNC3(bp, B44_CHIP_RESET_FULL);

	/* do a phy reset to test if there is an active phy */
	err = FUNC5(bp);
	if (err < 0) {
		FUNC7(sdev->dev, "phy reset failed\n");
		goto err_out_unregister_netdev;
	}

	if (bp->flags & B44_FLAG_EXTERNAL_PHY) {
		err = FUNC6(bp);
		if (err) {
			FUNC7(sdev->dev, "Cannot register PHY, aborting\n");
			goto err_out_unregister_netdev;
		}
	}

	FUNC8(sdev->dev, true);
	FUNC11(dev, "%s %pM\n", DRV_DESCRIPTION, dev->dev_addr);

	return 0;

err_out_unregister_netdev:
	FUNC24(dev);
err_out_powerdown:
	FUNC20(sdev->bus);

err_out_free_dev:
	FUNC16(&bp->napi);
	FUNC10(dev);

out:
	return err;
}