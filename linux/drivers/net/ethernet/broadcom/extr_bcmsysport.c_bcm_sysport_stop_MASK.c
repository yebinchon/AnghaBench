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
struct net_device {unsigned int num_tx_queues; int /*<<< orphan*/  phydev; } ;
struct bcm_sysport_priv {int /*<<< orphan*/  irq1; int /*<<< orphan*/  is_lite; int /*<<< orphan*/  irq0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RX_EN ; 
 int /*<<< orphan*/  CMD_TX_EN ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_sysport_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sysport_priv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct bcm_sysport_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bcm_sysport_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct bcm_sysport_priv *priv = FUNC5(dev);
	unsigned int i;
	int ret;

	FUNC2(dev);

	/* Disable UniMAC RX */
	FUNC9(priv, CMD_RX_EN, 0);

	ret = FUNC8(priv, 0);
	if (ret) {
		FUNC4(dev, "timeout disabling RDMA\n");
		return ret;
	}

	/* Wait for a maximum packet size to be drained */
	FUNC10(2000, 3000);

	ret = FUNC7(priv, 0);
	if (ret) {
		FUNC4(dev, "timeout disabling TDMA\n");
		return ret;
	}

	/* Disable UniMAC TX */
	FUNC9(priv, CMD_TX_EN, 0);

	/* Free RX/TX rings SW structures */
	for (i = 0; i < dev->num_tx_queues; i++)
		FUNC1(priv, i);
	FUNC0(priv);

	FUNC3(priv->irq0, dev);
	if (!priv->is_lite)
		FUNC3(priv->irq1, dev);

	/* Disconnect from PHY */
	FUNC6(dev->phydev);

	return 0;
}