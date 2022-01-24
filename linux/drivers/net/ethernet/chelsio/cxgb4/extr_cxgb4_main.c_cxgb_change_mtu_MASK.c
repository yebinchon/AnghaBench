#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct port_info {int /*<<< orphan*/  viid; TYPE_1__* adapter; } ;
struct net_device {int mtu; } ;
struct TYPE_2__ {int /*<<< orphan*/  pf; } ;

/* Variables and functions */
 struct port_info* FUNC0 (struct net_device*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, int new_mtu)
{
	int ret;
	struct port_info *pi = FUNC0(dev);

	ret = FUNC1(pi->adapter, pi->adapter->pf, pi->viid, new_mtu, -1,
			    -1, -1, -1, true);
	if (!ret)
		dev->mtu = new_mtu;
	return ret;
}