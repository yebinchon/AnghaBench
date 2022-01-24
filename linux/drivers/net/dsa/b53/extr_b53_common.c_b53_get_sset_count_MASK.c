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
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {int dummy; } ;

/* Variables and functions */
 int ETH_SS_PHY_STATS ; 
 int ETH_SS_STATS ; 
 int FUNC0 (struct b53_device*) ; 
 struct phy_device* FUNC1 (struct dsa_switch*,int) ; 
 int FUNC2 (struct phy_device*) ; 

int FUNC3(struct dsa_switch *ds, int port, int sset)
{
	struct b53_device *dev = ds->priv;
	struct phy_device *phydev;

	if (sset == ETH_SS_STATS) {
		return FUNC0(dev);
	} else if (sset == ETH_SS_PHY_STATS) {
		phydev = FUNC1(ds, port);
		if (!phydev)
			return 0;

		return FUNC2(phydev);
	}

	return 0;
}