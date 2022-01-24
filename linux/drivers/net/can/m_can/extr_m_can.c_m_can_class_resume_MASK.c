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
struct m_can_classdev {TYPE_1__ can; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 struct net_device* FUNC0 (struct device*) ; 
 int FUNC1 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct m_can_classdev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

int FUNC9(struct device *dev)
{
	struct net_device *ndev = FUNC0(dev);
	struct m_can_classdev *cdev = FUNC4(ndev);

	FUNC8(dev);

	cdev->can.state = CAN_STATE_ERROR_ACTIVE;

	if (FUNC6(ndev)) {
		int ret;

		ret = FUNC1(cdev);
		if (ret)
			return ret;

		FUNC2(cdev);
		FUNC3(ndev);
		FUNC5(ndev);
		FUNC7(ndev);
	}

	return 0;
}