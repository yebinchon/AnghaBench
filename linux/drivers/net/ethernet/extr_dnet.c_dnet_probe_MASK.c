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
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct phy_device {int dummy; } ;
struct net_device {unsigned int irq; unsigned long base_addr; struct phy_device* phydev; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  features; } ;
struct dnet {int capabilities; scalar_t__ regs; int /*<<< orphan*/  napi; int /*<<< orphan*/  lock; struct net_device* dev; } ;

/* Variables and functions */
 int DNET_CAPS_MASK ; 
 int DNET_HAS_DMA ; 
 int DNET_HAS_GIGABIT ; 
 int DNET_HAS_IRQ ; 
 int DNET_HAS_MDIO ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VERCAPS ; 
 int /*<<< orphan*/  FUNC3 (struct dnet*) ; 
 struct net_device* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  dnet_ethtool_ops ; 
 int /*<<< orphan*/  FUNC9 (struct dnet*) ; 
 int /*<<< orphan*/  dnet_interrupt ; 
 int FUNC10 (struct dnet*) ; 
 int /*<<< orphan*/  dnet_netdev_ops ; 
 int /*<<< orphan*/  dnet_phy_marvell_fixup ; 
 int /*<<< orphan*/  dnet_poll ; 
 int FUNC11 (struct dnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct dnet* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct phy_device*) ; 
 int FUNC19 (int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct net_device*) ; 
 int FUNC23 (struct net_device*) ; 
 int FUNC24 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct net_device*) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct resource *res;
	struct net_device *dev;
	struct dnet *bp;
	struct phy_device *phydev;
	int err;
	unsigned int irq;

	irq = FUNC20(pdev, 0);

	dev = FUNC4(sizeof(*bp));
	if (!dev)
		return -ENOMEM;

	/* TODO: Actually, we have some interesting features... */
	dev->features |= 0;

	bp = FUNC16(dev);
	bp->dev = dev;

	FUNC22(pdev, dev);
	FUNC2(dev, &pdev->dev);

	FUNC25(&bp->lock);

	res = FUNC21(pdev, IORESOURCE_MEM, 0);
	bp->regs = FUNC8(&pdev->dev, res);
	if (FUNC0(bp->regs)) {
		err = FUNC1(bp->regs);
		goto err_out_free_dev;
	}

	dev->irq = irq;
	err = FUNC24(dev->irq, dnet_interrupt, 0, DRV_NAME, dev);
	if (err) {
		FUNC5(&pdev->dev, "Unable to request IRQ %d (error %d)\n",
		       irq, err);
		goto err_out_free_dev;
	}

	dev->netdev_ops = &dnet_netdev_ops;
	FUNC17(dev, &bp->napi, dnet_poll, 64);
	dev->ethtool_ops = &dnet_ethtool_ops;

	dev->base_addr = (unsigned long)bp->regs;

	bp->capabilities = FUNC11(bp, VERCAPS) & DNET_CAPS_MASK;

	FUNC9(bp);

	if (!FUNC15(dev->dev_addr)) {
		/* choose a random ethernet address */
		FUNC12(dev);
		FUNC3(bp);
	}

	err = FUNC23(dev);
	if (err) {
		FUNC5(&pdev->dev, "Cannot register net device, aborting.\n");
		goto err_out_free_irq;
	}

	/* register the PHY board fixup (for Marvell 88E1111) */
	err = FUNC19(0x01410cc0, 0xfffffff0,
					 dnet_phy_marvell_fixup);
	/* we can live without it, so just issue a warning */
	if (err)
		FUNC7(&pdev->dev, "Cannot register PHY board fixup.\n");

	err = FUNC10(bp);
	if (err)
		goto err_out_unregister_netdev;

	FUNC6(&pdev->dev, "Dave DNET at 0x%p (0x%08x) irq %d %pM\n",
	       bp->regs, (unsigned int)res->start, dev->irq, dev->dev_addr);
	FUNC6(&pdev->dev, "has %smdio, %sirq, %sgigabit, %sdma\n",
	       (bp->capabilities & DNET_HAS_MDIO) ? "" : "no ",
	       (bp->capabilities & DNET_HAS_IRQ) ? "" : "no ",
	       (bp->capabilities & DNET_HAS_GIGABIT) ? "" : "no ",
	       (bp->capabilities & DNET_HAS_DMA) ? "" : "no ");
	phydev = dev->phydev;
	FUNC18(phydev);

	return 0;

err_out_unregister_netdev:
	FUNC26(dev);
err_out_free_irq:
	FUNC13(dev->irq, dev);
err_out_free_dev:
	FUNC14(dev);
	return err;
}