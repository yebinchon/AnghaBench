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
struct pch_gbe_adapter {int /*<<< orphan*/  mii; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int SIOCSHWTSTAMP ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct net_device*,struct ifreq*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 struct pch_gbe_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
	struct pch_gbe_adapter *adapter = FUNC4(netdev);

	FUNC3(netdev, "cmd : 0x%04x\n", cmd);

	if (cmd == SIOCSHWTSTAMP)
		return FUNC1(netdev, ifr, cmd);

	return FUNC0(&adapter->mii, FUNC2(ifr), cmd, NULL);
}