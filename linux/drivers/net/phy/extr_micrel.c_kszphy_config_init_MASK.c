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
struct phy_device {struct kszphy_priv* priv; } ;
struct kszphy_type {scalar_t__ has_nand_tree_disable; scalar_t__ has_broadcast_disable; } ;
struct kszphy_priv {struct kszphy_type* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	struct kszphy_priv *priv = phydev->priv;
	const struct kszphy_type *type;

	if (!priv)
		return 0;

	type = priv->type;

	if (type->has_broadcast_disable)
		FUNC0(phydev);

	if (type->has_nand_tree_disable)
		FUNC2(phydev);

	return FUNC1(phydev);
}