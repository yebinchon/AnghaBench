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

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  SIOCGHWTSTAMP 129 
#define  SIOCSHWTSTAMP 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct phy_device*,struct ifreq*,int) ; 
 int FUNC2 (struct net_device*,struct ifreq*) ; 
 int FUNC3 (struct net_device*,struct ifreq*) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev, struct ifreq *req, int cmd)
{
	struct phy_device *phydev = ndev->phydev;

	if (!FUNC0(ndev))
		return -EINVAL;

	if (!phydev)
		return -ENODEV;

	switch (cmd) {
	case SIOCGHWTSTAMP:
		return FUNC2(ndev, req);
	case SIOCSHWTSTAMP:
		return FUNC3(ndev, req);
	}

	return FUNC1(phydev, req, cmd);
}