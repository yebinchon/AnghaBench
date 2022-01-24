#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; } ;
struct TYPE_5__ {int a_promiscuous_mode; } ;
struct TYPE_6__ {TYPE_1__ b5; } ;
struct TYPE_7__ {scalar_t__ num_multi; TYPE_2__ sparm; } ;
typedef  TYPE_3__ ray_dev_t ;
typedef  int /*<<< orphan*/  promisc ;
typedef  int UCHAR ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  OBJID_promiscuous_mode ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 TYPE_3__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	ray_dev_t *local = FUNC1(dev);
	UCHAR promisc;

	FUNC2("ray_cs set_multicast_list(%p)\n", dev);

	if (dev->flags & IFF_PROMISC) {
		if (local->sparm.b5.a_promiscuous_mode == 0) {
			FUNC2("ray_cs set_multicast_list promisc on\n");
			local->sparm.b5.a_promiscuous_mode = 1;
			promisc = 1;
			FUNC4(dev, OBJID_promiscuous_mode,
					&promisc, sizeof(promisc));
		}
	} else {
		if (local->sparm.b5.a_promiscuous_mode == 1) {
			FUNC2("ray_cs set_multicast_list promisc off\n");
			local->sparm.b5.a_promiscuous_mode = 0;
			promisc = 0;
			FUNC4(dev, OBJID_promiscuous_mode,
					&promisc, sizeof(promisc));
		}
	}

	if (dev->flags & IFF_ALLMULTI)
		FUNC3(dev, 1);
	else {
		if (local->num_multi != FUNC0(dev))
			FUNC3(dev, 0);
	}
}