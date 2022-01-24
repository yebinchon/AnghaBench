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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct m_can_classdev {TYPE_1__ can; } ;

/* Variables and functions */
 scalar_t__ CAN_STATE_BUS_OFF ; 
 scalar_t__ CAN_STATE_ERROR_PASSIVE ; 
 scalar_t__ CAN_STATE_ERROR_WARNING ; 
 int PSR_BO ; 
 int PSR_EP ; 
 int PSR_EW ; 
 scalar_t__ FUNC0 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct m_can_classdev* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, u32 psr)
{
	struct m_can_classdev *cdev = FUNC2(dev);
	int work_done = 0;

	if (psr & PSR_EW && cdev->can.state != CAN_STATE_ERROR_WARNING) {
		FUNC1(dev, "entered error warning state\n");
		work_done += FUNC0(dev,
						       CAN_STATE_ERROR_WARNING);
	}

	if (psr & PSR_EP && cdev->can.state != CAN_STATE_ERROR_PASSIVE) {
		FUNC1(dev, "entered error passive state\n");
		work_done += FUNC0(dev,
						       CAN_STATE_ERROR_PASSIVE);
	}

	if (psr & PSR_BO && cdev->can.state != CAN_STATE_BUS_OFF) {
		FUNC1(dev, "entered error bus off state\n");
		work_done += FUNC0(dev,
						       CAN_STATE_BUS_OFF);
	}

	return work_done;
}