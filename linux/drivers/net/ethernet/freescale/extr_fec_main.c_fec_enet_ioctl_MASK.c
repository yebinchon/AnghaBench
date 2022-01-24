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
struct net_device {struct phy_device* phydev; } ;
struct ifreq {int dummy; } ;
struct fec_enet_private {scalar_t__ bufdesc_ex; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int SIOCGHWTSTAMP ; 
 int SIOCSHWTSTAMP ; 
 int FUNC0 (struct net_device*,struct ifreq*) ; 
 int FUNC1 (struct net_device*,struct ifreq*) ; 
 struct fec_enet_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct phy_device*,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, struct ifreq *rq, int cmd)
{
	struct fec_enet_private *fep = FUNC2(ndev);
	struct phy_device *phydev = ndev->phydev;

	if (!FUNC3(ndev))
		return -EINVAL;

	if (!phydev)
		return -ENODEV;

	if (fep->bufdesc_ex) {
		if (cmd == SIOCSHWTSTAMP)
			return FUNC1(ndev, rq);
		if (cmd == SIOCGHWTSTAMP)
			return FUNC0(ndev, rq);
	}

	return FUNC4(phydev, rq, cmd);
}