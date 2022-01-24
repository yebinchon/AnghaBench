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
typedef  int /*<<< orphan*/  u32 ;
struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {int dummy; } ;
typedef  scalar_t__ phy_interface_t ;

/* Variables and functions */
 scalar_t__ PHY_INTERFACE_MODE_MII ; 
 scalar_t__ PHY_INTERFACE_MODE_REVMII ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RGMII_MODE_EN ; 
 struct bcm_sf2_priv* FUNC1 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_sf2_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_sf2_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dsa_switch *ds, int port,
				    phy_interface_t interface, bool link)
{
	struct bcm_sf2_priv *priv = FUNC1(ds);
	u32 reg;

	if (!FUNC2(interface) &&
	    interface != PHY_INTERFACE_MODE_MII &&
	    interface != PHY_INTERFACE_MODE_REVMII)
		return;

	/* If the link is down, just disable the interface to conserve power */
	reg = FUNC3(priv, FUNC0(port));
	if (link)
		reg |= RGMII_MODE_EN;
	else
		reg &= ~RGMII_MODE_EN;
	FUNC4(priv, reg, FUNC0(port));
}