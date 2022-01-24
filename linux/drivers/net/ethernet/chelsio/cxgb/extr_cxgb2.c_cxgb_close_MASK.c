#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct port_info {struct cmac* mac; } ;
struct net_device {size_t if_port; struct adapter* ml_priv; } ;
struct cmac {TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ stats_update_period; } ;
struct adapter {int open_device_map; int /*<<< orphan*/  work_lock; TYPE_2__ params; int /*<<< orphan*/  napi; struct port_info* port; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disable ) (struct cmac*,int) ;} ;

/* Variables and functions */
 int MAC_DIRECTION_RX ; 
 int MAC_DIRECTION_TX ; 
 int PORT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct cmac*,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct adapter *adapter = dev->ml_priv;
	struct port_info *p = &adapter->port[dev->if_port];
	struct cmac *mac = p->mac;

	FUNC5(dev);
	FUNC3(&adapter->napi);
	mac->ops->disable(mac, MAC_DIRECTION_TX | MAC_DIRECTION_RX);
	FUNC4(dev);

	FUNC1(dev->if_port, &adapter->open_device_map);
	if (adapter->params.stats_update_period &&
	    !(adapter->open_device_map & PORT_MASK)) {
		/* Stop statistics accumulation. */
		FUNC6();
		FUNC7(&adapter->work_lock);   /* sync with update task */
		FUNC8(&adapter->work_lock);
		FUNC0(adapter);
	}

	if (!adapter->open_device_map)
		FUNC2(adapter);
	return 0;
}