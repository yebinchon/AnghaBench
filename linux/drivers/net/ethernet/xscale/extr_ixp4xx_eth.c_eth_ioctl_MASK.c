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
 int SIOCGHWTSTAMP ; 
 int SIOCSHWTSTAMP ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (struct net_device*,struct ifreq*) ; 
 int FUNC2 (struct net_device*,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ifreq *req, int cmd)
{
	if (!FUNC3(dev))
		return -EINVAL;

	if (FUNC0()) {
		if (cmd == SIOCSHWTSTAMP)
			return FUNC2(dev, req);
		if (cmd == SIOCGHWTSTAMP)
			return FUNC1(dev, req);
	}

	return FUNC4(dev->phydev, req, cmd);
}