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
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *net_dev, struct ifreq *ifr, int cmd)
{
	if (!FUNC0(net_dev))
		return -EINVAL;

	return FUNC1(net_dev->phydev, ifr, cmd);
}