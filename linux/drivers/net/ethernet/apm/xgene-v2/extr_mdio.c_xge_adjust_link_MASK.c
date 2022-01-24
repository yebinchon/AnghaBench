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
struct xge_pdata {scalar_t__ phy_speed; } ;
struct phy_device {scalar_t__ speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;

/* Variables and functions */
 scalar_t__ SPEED_UNKNOWN ; 
 struct xge_pdata* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct xge_pdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct xge_pdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct xge_pdata*) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC0(ndev);
	struct phy_device *phydev = ndev->phydev;

	if (phydev->link) {
		if (pdata->phy_speed != phydev->speed) {
			pdata->phy_speed = phydev->speed;
			FUNC4(pdata);
			FUNC3(pdata);
			FUNC1(phydev);
		}
	} else {
		if (pdata->phy_speed != SPEED_UNKNOWN) {
			pdata->phy_speed = SPEED_UNKNOWN;
			FUNC2(pdata);
			FUNC1(phydev);
		}
	}
}