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
 int /*<<< orphan*/  CAN_STATE_SLEEPING ; 
 struct net_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct m_can_classdev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

int FUNC8(struct device *dev)
{
	struct net_device *ndev = FUNC0(dev);
	struct m_can_classdev *cdev = FUNC3(ndev);

	if (FUNC5(ndev)) {
		FUNC6(ndev);
		FUNC4(ndev);
		FUNC2(ndev);
		FUNC1(cdev);
	}

	FUNC7(dev);

	cdev->can.state = CAN_STATE_SLEEPING;

	return 0;
}