#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct bcm_sysport_priv {int /*<<< orphan*/  dsa_notifier; } ;

/* Variables and functions */
 struct net_device* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct bcm_sysport_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 scalar_t__ FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct net_device *dev = FUNC0(&pdev->dev);
	struct bcm_sysport_priv *priv = FUNC3(dev);
	struct device_node *dn = pdev->dev.of_node;

	/* Not much to do, ndo_close has been called
	 * and we use managed allocations
	 */
	FUNC6(&priv->dsa_notifier);
	FUNC7(dev);
	if (FUNC5(dn))
		FUNC4(dn);
	FUNC2(dev);
	FUNC1(&pdev->dev, NULL);

	return 0;
}