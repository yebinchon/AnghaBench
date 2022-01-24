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
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  irq; struct phy_device* phydev; } ;
struct nb8800_priv {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 struct nb8800_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct nb8800_priv *priv = FUNC6(dev);
	struct phy_device *phydev = dev->phydev;

	FUNC9(phydev);

	FUNC7(dev);
	FUNC1(&priv->napi);

	FUNC3(dev);
	FUNC4(dev, false);
	FUNC5(dev, false);

	FUNC8(phydev);

	FUNC0(dev->irq, dev);

	FUNC2(dev);

	return 0;
}