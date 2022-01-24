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
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct bcmgenet_priv {struct device_node* mdio_dn; int /*<<< orphan*/  version; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct device_node* FUNC3 (struct device_node*,char*) ; 

__attribute__((used)) static struct device_node *FUNC4(struct bcmgenet_priv *priv)
{
	struct device_node *dn = priv->pdev->dev.of_node;
	struct device *kdev = &priv->pdev->dev;
	char *compat;

	compat = FUNC1(GFP_KERNEL, "brcm,genet-mdio-v%d", priv->version);
	if (!compat)
		return NULL;

	priv->mdio_dn = FUNC3(dn, compat);
	FUNC2(compat);
	if (!priv->mdio_dn) {
		FUNC0(kdev, "unable to find MDIO bus node\n");
		return NULL;
	}

	return priv->mdio_dn;
}