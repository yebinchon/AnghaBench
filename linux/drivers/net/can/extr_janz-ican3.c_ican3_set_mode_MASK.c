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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct ican3_dev {TYPE_1__ can; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
 int CAN_MODE_START ; 
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int ENOTSUPP ; 
 int FUNC0 (struct ican3_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct ican3_dev* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, enum can_mode mode)
{
	struct ican3_dev *mod = FUNC2(ndev);
	int ret;

	if (mode != CAN_MODE_START)
		return -ENOTSUPP;

	/* bring the bus online */
	ret = FUNC0(mod, true);
	if (ret) {
		FUNC1(ndev, "unable to set bus-on\n");
		return ret;
	}

	/* start up the network device */
	mod->can.state = CAN_STATE_ERROR_ACTIVE;

	if (FUNC3(ndev))
		FUNC4(ndev);

	return 0;
}