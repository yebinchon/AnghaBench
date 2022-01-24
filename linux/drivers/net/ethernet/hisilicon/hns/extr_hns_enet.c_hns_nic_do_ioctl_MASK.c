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
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct phy_device*,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, struct ifreq *ifr,
			    int cmd)
{
	struct phy_device *phy_dev = netdev->phydev;

	if (!FUNC0(netdev))
		return -EINVAL;

	if (!phy_dev)
		return -ENOTSUPP;

	return FUNC1(phy_dev, ifr, cmd);
}