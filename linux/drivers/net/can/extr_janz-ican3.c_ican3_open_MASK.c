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
struct ican3_dev {TYPE_1__ can; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ican3_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct ican3_dev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct ican3_dev *mod = FUNC3(ndev);
	int ret;

	/* open the CAN layer */
	ret = FUNC5(ndev);
	if (ret) {
		FUNC2(mod->ndev, "unable to start CAN layer\n");
		return ret;
	}

	/* bring the bus online */
	ret = FUNC1(mod, true);
	if (ret) {
		FUNC2(mod->ndev, "unable to set bus-on\n");
		FUNC0(ndev);
		return ret;
	}

	/* start up the network device */
	mod->can.state = CAN_STATE_ERROR_ACTIVE;
	FUNC4(ndev);

	return 0;
}