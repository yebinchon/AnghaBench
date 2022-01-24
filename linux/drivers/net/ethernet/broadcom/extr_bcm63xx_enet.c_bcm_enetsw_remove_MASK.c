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
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct bcm_enet_priv {int /*<<< orphan*/  mac_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct bcm_enet_priv* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct bcm_enet_priv *priv;
	struct net_device *dev;

	/* stop netdevice */
	dev = FUNC3(pdev);
	priv = FUNC2(dev);
	FUNC4(dev);

	FUNC0(priv->mac_clk);

	FUNC1(dev);
	return 0;
}