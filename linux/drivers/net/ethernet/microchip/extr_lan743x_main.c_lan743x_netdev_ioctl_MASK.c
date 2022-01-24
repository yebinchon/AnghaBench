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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SIOCSHWTSTAMP ; 
 int FUNC0 (struct net_device*,struct ifreq*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
				struct ifreq *ifr, int cmd)
{
	if (!FUNC1(netdev))
		return -EINVAL;
	if (cmd == SIOCSHWTSTAMP)
		return FUNC0(netdev, ifr, cmd);
	return FUNC2(netdev->phydev, ifr, cmd);
}