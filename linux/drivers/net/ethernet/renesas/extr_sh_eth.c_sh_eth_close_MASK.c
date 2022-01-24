#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sh_eth_private {int irq_enabled; scalar_t__ is_opened; TYPE_1__* pdev; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  irq; scalar_t__ phydev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EESIPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sh_eth_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC2(ndev);

	FUNC3(ndev);

	/* Serialise with the interrupt handler and NAPI, then disable
	 * interrupts.  We have to clear the irq_enabled flag first to
	 * ensure that interrupts won't be re-enabled.
	 */
	mdp->irq_enabled = false;
	FUNC10(ndev->irq);
	FUNC1(&mdp->napi);
	FUNC9(ndev, 0x0000, EESIPR);

	FUNC7(ndev);

	/* PHY Disconnect */
	if (ndev->phydev) {
		FUNC5(ndev->phydev);
		FUNC4(ndev->phydev);
	}

	FUNC0(ndev->irq, ndev);

	/* Free all the skbuffs in the Rx queue and the DMA buffer. */
	FUNC8(ndev);

	FUNC6(&mdp->pdev->dev);

	mdp->is_opened = 0;

	return 0;
}