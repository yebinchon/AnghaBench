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
struct net_device {int /*<<< orphan*/  irq; scalar_t__ phydev; } ;
struct ftgmac100 {int /*<<< orphan*/  ndev; scalar_t__ use_ncsi; int /*<<< orphan*/  napi; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FTGMAC100_OFFSET_IER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ftgmac100* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct ftgmac100 *priv = FUNC7(netdev);

	/* Note about the reset task: We are called with the rtnl lock
	 * held, so we are synchronized against the core of the reset
	 * task. We must not try to synchronously cancel it otherwise
	 * we can deadlock. But since it will test for netif_running()
	 * which has already been cleared by the net core, we don't
	 * anything special to do.
	 */

	/* disable all interrupts */
	FUNC4(0, priv->base + FTGMAC100_OFFSET_IER);

	FUNC9(netdev);
	FUNC5(&priv->napi);
	FUNC8(&priv->napi);
	if (netdev->phydev)
		FUNC10(netdev->phydev);
	else if (priv->use_ncsi)
		FUNC6(priv->ndev);

	FUNC3(priv);
	FUNC0(netdev->irq, netdev);
	FUNC1(priv);
	FUNC2(priv);

	return 0;
}