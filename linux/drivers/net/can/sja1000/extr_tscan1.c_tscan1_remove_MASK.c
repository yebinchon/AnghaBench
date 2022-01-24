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
struct sja1000_priv {scalar_t__ reg_base; } ;
struct net_device {unsigned long base_addr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TSCAN1_MODE ; 
 int /*<<< orphan*/  TSCAN1_PLD_SIZE ; 
 int /*<<< orphan*/  TSCAN1_SJA1000_SIZE ; 
 struct net_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct sja1000_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, unsigned id /*unused*/)
{
	struct net_device *netdev;
	struct sja1000_priv *priv;
	unsigned long pld_base, sja1000_base;

	netdev = FUNC0(dev);
	FUNC6(netdev);
	FUNC1(dev, NULL);

	priv = FUNC3(netdev);
	pld_base = netdev->base_addr;
	sja1000_base = (unsigned long)priv->reg_base;

	FUNC4(0, pld_base + TSCAN1_MODE);	/* disable SJA1000 IO space */

	FUNC5(sja1000_base, TSCAN1_SJA1000_SIZE);
	FUNC5(pld_base, TSCAN1_PLD_SIZE);

	FUNC2(netdev);

	return 0;
}