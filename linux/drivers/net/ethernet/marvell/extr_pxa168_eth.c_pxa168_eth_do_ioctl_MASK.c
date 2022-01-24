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
 int EOPNOTSUPP ; 
 int FUNC0 (scalar_t__,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev, struct ifreq *ifr,
			       int cmd)
{
	if (dev->phydev)
		return FUNC0(dev->phydev, ifr, cmd);

	return -EOPNOTSUPP;
}