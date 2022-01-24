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
 int SIOCGHWTSTAMP ; 
 int SIOCSHWTSTAMP ; 
 int FUNC0 (struct net_device*,struct ifreq*) ; 
 int FUNC1 (struct net_device*,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct phy_device*,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct phy_device *phydev = dev->phydev;

	if (!FUNC2(dev))
		return -EINVAL;

	if (cmd == SIOCSHWTSTAMP)
		return FUNC1(dev, rq);
	if (cmd == SIOCGHWTSTAMP)
		return FUNC0(dev, rq);

	if (!phydev)
		return -ENODEV;

	return FUNC3(phydev, rq, cmd);
}