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
struct phy_device {scalar_t__ priv; } ;
struct dp83867_private {scalar_t__ port_mirroring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP83867_CFG4 ; 
 int /*<<< orphan*/  DP83867_CFG4_PORT_MIRROR_EN ; 
 int /*<<< orphan*/  DP83867_DEVADDR ; 
 scalar_t__ DP83867_PORT_MIRROING_EN ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	struct dp83867_private *dp83867 =
		(struct dp83867_private *)phydev->priv;

	if (dp83867->port_mirroring == DP83867_PORT_MIRROING_EN)
		FUNC1(phydev, DP83867_DEVADDR, DP83867_CFG4,
				 DP83867_CFG4_PORT_MIRROR_EN);
	else
		FUNC0(phydev, DP83867_DEVADDR, DP83867_CFG4,
				   DP83867_CFG4_PORT_MIRROR_EN);
	return 0;
}