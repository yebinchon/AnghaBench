#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xenbus_device {int /*<<< orphan*/  otherend; int /*<<< orphan*/  nodename; int /*<<< orphan*/  dev; } ;
struct netfront_info {TYPE_1__* netdev; scalar_t__ queues; } ;
struct TYPE_3__ {scalar_t__ reg_state; } ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 scalar_t__ XenbusStateClosed ; 
 scalar_t__ XenbusStateClosing ; 
 scalar_t__ XenbusStateUnknown ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct netfront_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  module_wq ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xenbus_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct xenbus_device *dev)
{
	struct netfront_info *info = FUNC1(&dev->dev);

	FUNC0(&dev->dev, "%s\n", dev->nodename);

	if (FUNC6(dev->otherend) != XenbusStateClosed) {
		FUNC7(dev, XenbusStateClosing);
		FUNC5(module_wq,
			   FUNC6(dev->otherend) ==
			   XenbusStateClosing ||
			   FUNC6(dev->otherend) ==
			   XenbusStateUnknown);

		FUNC7(dev, XenbusStateClosed);
		FUNC5(module_wq,
			   FUNC6(dev->otherend) ==
			   XenbusStateClosed ||
			   FUNC6(dev->otherend) ==
			   XenbusStateUnknown);
	}

	FUNC9(info);

	if (info->netdev->reg_state == NETREG_REGISTERED)
		FUNC4(info->netdev);

	if (info->queues) {
		FUNC2();
		FUNC8(info);
		FUNC3();
	}
	FUNC10(info->netdev);

	return 0;
}