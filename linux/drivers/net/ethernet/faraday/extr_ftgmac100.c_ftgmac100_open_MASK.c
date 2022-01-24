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
struct net_device {int /*<<< orphan*/  irq; scalar_t__ phydev; int /*<<< orphan*/  name; } ;
struct ftgmac100 {scalar_t__ base; int /*<<< orphan*/  napi; int /*<<< orphan*/  ndev; scalar_t__ use_ncsi; scalar_t__ cur_speed; scalar_t__ cur_duplex; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ FTGMAC100_OFFSET_IER ; 
 scalar_t__ SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC1 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftgmac100*) ; 
 int FUNC4 (struct ftgmac100*,int) ; 
 int /*<<< orphan*/  ftgmac100_interrupt ; 
 int /*<<< orphan*/  ftgmac100_poll ; 
 int FUNC5 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,...) ; 
 struct ftgmac100* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC17(struct net_device *netdev)
{
	struct ftgmac100 *priv = FUNC10(netdev);
	int err;

	/* Allocate ring buffers  */
	err = FUNC1(priv);
	if (err) {
		FUNC9(netdev, "Failed to allocate descriptors\n");
		return err;
	}

	/* When using NC-SI we force the speed to 100Mbit/s full duplex,
	 *
	 * Otherwise we leave it set to 0 (no link), the link
	 * message from the PHY layer will handle setting it up to
	 * something else if needed.
	 */
	if (priv->use_ncsi) {
		priv->cur_duplex = DUPLEX_FULL;
		priv->cur_speed = SPEED_100;
	} else {
		priv->cur_duplex = 0;
		priv->cur_speed = 0;
	}

	/* Reset the hardware */
	err = FUNC5(priv);
	if (err)
		goto err_hw;

	/* Initialize NAPI */
	FUNC12(netdev, &priv->napi, ftgmac100_poll, 64);

	/* Grab our interrupt */
	err = FUNC16(netdev->irq, ftgmac100_interrupt, 0, netdev->name, netdev);
	if (err) {
		FUNC9(netdev, "failed to request irq %d\n", netdev->irq);
		goto err_irq;
	}

	/* Start things up */
	err = FUNC4(priv, false);
	if (err) {
		FUNC9(netdev, "Failed to allocate packet buffers\n");
		goto err_alloc;
	}

	if (netdev->phydev) {
		/* If we have a PHY, start polling */
		FUNC15(netdev->phydev);
	} else if (priv->use_ncsi) {
		/* If using NC-SI, set our carrier on and start the stack */
		FUNC11(netdev);

		/* Start the NCSI device */
		err = FUNC8(priv->ndev);
		if (err)
			goto err_ncsi;
	}

	return 0;

 err_ncsi:
	FUNC7(&priv->napi);
	FUNC14(netdev);
 err_alloc:
	FUNC2(priv);
	FUNC0(netdev->irq, netdev);
 err_irq:
	FUNC13(&priv->napi);
 err_hw:
	FUNC6(0, priv->base + FTGMAC100_OFFSET_IER);
	FUNC3(priv);
	return err;
}