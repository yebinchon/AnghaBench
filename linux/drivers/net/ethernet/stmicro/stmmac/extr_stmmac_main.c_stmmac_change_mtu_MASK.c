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
struct stmmac_priv {int /*<<< orphan*/  dev; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct stmmac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, int new_mtu)
{
	struct stmmac_priv *priv = FUNC1(dev);

	if (FUNC3(dev)) {
		FUNC0(priv->dev, "must be stopped to change its MTU\n");
		return -EBUSY;
	}

	dev->mtu = new_mtu;

	FUNC2(dev);

	return 0;
}