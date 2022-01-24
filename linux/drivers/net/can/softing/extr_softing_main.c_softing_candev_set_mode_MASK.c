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
struct net_device {int dummy; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
#define  CAN_MODE_SLEEP 130 
#define  CAN_MODE_START 129 
#define  CAN_MODE_STOP 128 
 int EOPNOTSUPP ; 
 int FUNC0 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC1(struct net_device *ndev, enum can_mode mode)
{
	int ret;

	switch (mode) {
	case CAN_MODE_START:
		/* softing_startstop does close_candev() */
		ret = FUNC0(ndev, 1);
		return ret;
	case CAN_MODE_STOP:
	case CAN_MODE_SLEEP:
		return -EOPNOTSUPP;
	}
	return 0;
}