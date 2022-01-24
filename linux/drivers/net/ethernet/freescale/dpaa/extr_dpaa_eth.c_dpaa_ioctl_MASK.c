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
struct net_device {scalar_t__ phydev; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SIOCGMIIREG ; 
 int SIOCSHWTSTAMP ; 
 int FUNC0 (struct net_device*,struct ifreq*,int) ; 
 int FUNC1 (scalar_t__,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *net_dev, struct ifreq *rq, int cmd)
{
	int ret = -EINVAL;

	if (cmd == SIOCGMIIREG) {
		if (net_dev->phydev)
			return FUNC1(net_dev->phydev, rq, cmd);
	}

	if (cmd == SIOCSHWTSTAMP)
		return FUNC0(net_dev, rq, cmd);

	return ret;
}