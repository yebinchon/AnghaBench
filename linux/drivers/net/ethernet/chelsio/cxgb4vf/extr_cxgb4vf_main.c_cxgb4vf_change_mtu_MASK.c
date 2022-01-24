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
struct port_info {int /*<<< orphan*/  viid; int /*<<< orphan*/  adapter; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 struct port_info* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, int new_mtu)
{
	int ret;
	struct port_info *pi = FUNC0(dev);

	ret = FUNC1(pi->adapter, pi->viid, new_mtu,
			      -1, -1, -1, -1, true);
	if (!ret)
		dev->mtu = new_mtu;
	return ret;
}