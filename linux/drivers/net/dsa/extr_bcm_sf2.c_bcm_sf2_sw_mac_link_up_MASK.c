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
struct phy_device {int dummy; } ;
struct ethtool_eee {int /*<<< orphan*/  eee_enabled; } ;
struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {TYPE_2__* dev; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;
struct TYPE_4__ {TYPE_1__* ports; } ;
struct TYPE_3__ {struct ethtool_eee eee; } ;

/* Variables and functions */
 unsigned int MLO_AN_PHY ; 
 int /*<<< orphan*/  FUNC0 (struct dsa_switch*,int,struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*,int,int /*<<< orphan*/ ,int) ; 
 struct bcm_sf2_priv* FUNC2 (struct dsa_switch*) ; 

__attribute__((used)) static void FUNC3(struct dsa_switch *ds, int port,
				   unsigned int mode,
				   phy_interface_t interface,
				   struct phy_device *phydev)
{
	struct bcm_sf2_priv *priv = FUNC2(ds);
	struct ethtool_eee *p = &priv->dev->ports[port].eee;

	FUNC1(ds, port, interface, true);

	if (mode == MLO_AN_PHY && phydev)
		p->eee_enabled = FUNC0(ds, port, phydev);
}