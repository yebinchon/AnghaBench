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
struct smsc911x_data {int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {unsigned int rx_dropped; } ;
struct net_device {int /*<<< orphan*/ * phydev; int /*<<< orphan*/  irq; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_CFG ; 
 unsigned int INT_CFG_IRQ_EN_ ; 
 int /*<<< orphan*/  RX_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct smsc911x_data* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct smsc911x_data *pdata = FUNC3(dev);
	unsigned int temp;

	/* Disable all device interrupts */
	temp = FUNC8(pdata, INT_CFG);
	temp &= ~INT_CFG_IRQ_EN_;
	FUNC9(pdata, INT_CFG, temp);

	/* Stop Tx and Rx polling */
	FUNC5(dev);
	FUNC2(&pdata->napi);

	/* At this point all Rx and Tx activity is stopped */
	dev->stats.rx_dropped += FUNC8(pdata, RX_DROP);
	FUNC10(dev);

	FUNC1(dev->irq, dev);

	/* Bring the PHY down */
	if (dev->phydev) {
		FUNC7(dev->phydev);
		FUNC6(dev->phydev);
		dev->phydev = NULL;
	}
	FUNC4(dev);

	FUNC0(pdata, ifdown, "Interface stopped");
	return 0;
}