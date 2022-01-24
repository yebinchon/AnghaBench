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
struct ethtool_dump {int flag; } ;
struct device {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  LANCER_DELETE_FW_DUMP 129 
#define  LANCER_INITIATE_FW_DUMP 128 
 int /*<<< orphan*/  MAX_PRIVILEGES ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*) ; 
 int FUNC4 (struct be_adapter*) ; 
 int FUNC5 (struct be_adapter*) ; 
 struct be_adapter* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, struct ethtool_dump *dump)
{
	struct be_adapter *adapter = FUNC6(netdev);
	struct device *dev = &adapter->pdev->dev;
	int status;

	if (!FUNC3(adapter) ||
	    !FUNC0(adapter, MAX_PRIVILEGES))
		return -EOPNOTSUPP;

	switch (dump->flag) {
	case LANCER_INITIATE_FW_DUMP:
		status = FUNC5(adapter);
		if (!status)
			FUNC2(dev, "FW dump initiated successfully\n");
		break;
	case LANCER_DELETE_FW_DUMP:
		status = FUNC4(adapter);
		if (!status)
			FUNC2(dev, "FW dump deleted successfully\n");
	break;
	default:
		FUNC1(dev, "Invalid dump level: 0x%x\n", dump->flag);
		return -EINVAL;
	}
	return status;
}