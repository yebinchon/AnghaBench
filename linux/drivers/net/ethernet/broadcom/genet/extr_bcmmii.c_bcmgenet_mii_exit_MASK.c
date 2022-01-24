#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct bcmgenet_priv {int /*<<< orphan*/  mii_pdev; int /*<<< orphan*/  phy_dn; TYPE_2__* pdev; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 struct bcmgenet_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 scalar_t__ FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct net_device *dev)
{
	struct bcmgenet_priv *priv = FUNC0(dev);
	struct device_node *dn = priv->pdev->dev.of_node;

	if (FUNC3(dn))
		FUNC2(dn);
	FUNC1(priv->phy_dn);
	FUNC4(priv->mii_pdev);
}