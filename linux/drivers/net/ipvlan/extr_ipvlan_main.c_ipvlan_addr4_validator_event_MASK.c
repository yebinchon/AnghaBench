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
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct ipvl_dev {int /*<<< orphan*/  port; } ;
struct in_validator_info {int /*<<< orphan*/  extack; int /*<<< orphan*/  ivi_addr; TYPE_1__* ivi_dev; } ;
struct TYPE_2__ {scalar_t__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EADDRINUSE ; 
#define  NETDEV_UP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct ipvl_dev* FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *unused,
					unsigned long event, void *ptr)
{
	struct in_validator_info *ivi = (struct in_validator_info *)ptr;
	struct net_device *dev = (struct net_device *)ivi->ivi_dev->dev;
	struct ipvl_dev *ipvlan = FUNC3(dev);

	if (!FUNC2(dev))
		return NOTIFY_DONE;

	switch (event) {
	case NETDEV_UP:
		if (FUNC1(ipvlan->port, &ivi->ivi_addr, false)) {
			FUNC0(ivi->extack,
				       "Address already assigned to an ipvlan device");
			return FUNC4(-EADDRINUSE);
		}
		break;
	}

	return NOTIFY_OK;
}