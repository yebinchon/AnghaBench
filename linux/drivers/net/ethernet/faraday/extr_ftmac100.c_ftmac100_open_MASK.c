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
struct net_device {int /*<<< orphan*/  name; } ;
struct ftmac100 {int /*<<< orphan*/  irq; int /*<<< orphan*/  napi; scalar_t__ tx_pending; scalar_t__ tx_pointer; scalar_t__ tx_clean_pointer; scalar_t__ rx_pointer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC1 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftmac100*) ; 
 int /*<<< orphan*/  ftmac100_interrupt ; 
 int FUNC4 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,...) ; 
 struct ftmac100* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev)
{
	struct ftmac100 *priv = FUNC7(netdev);
	int err;

	err = FUNC1(priv);
	if (err) {
		FUNC6(netdev, "failed to allocate buffers\n");
		goto err_alloc;
	}

	err = FUNC9(priv->irq, ftmac100_interrupt, 0, netdev->name, netdev);
	if (err) {
		FUNC6(netdev, "failed to request irq %d\n", priv->irq);
		goto err_irq;
	}

	priv->rx_pointer = 0;
	priv->tx_clean_pointer = 0;
	priv->tx_pointer = 0;
	priv->tx_pending = 0;

	err = FUNC4(priv);
	if (err)
		goto err_hw;

	FUNC5(&priv->napi);
	FUNC8(netdev);

	FUNC2(priv);

	return 0;

err_hw:
	FUNC0(priv->irq, netdev);
err_irq:
	FUNC3(priv);
err_alloc:
	return err;
}