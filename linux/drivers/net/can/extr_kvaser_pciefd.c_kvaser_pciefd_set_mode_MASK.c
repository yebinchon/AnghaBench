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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  restart_ms; } ;
struct kvaser_pciefd_can {TYPE_1__ can; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
#define  CAN_MODE_START 128 
 int EOPNOTSUPP ; 
 int FUNC0 (struct kvaser_pciefd_can*) ; 
 struct kvaser_pciefd_can* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev, enum can_mode mode)
{
	struct kvaser_pciefd_can *can = FUNC1(ndev);
	int ret = 0;

	switch (mode) {
	case CAN_MODE_START:
		if (!can->can.restart_ms)
			ret = FUNC0(can);
		break;
	default:
		return -EOPNOTSUPP;
	}

	return ret;
}