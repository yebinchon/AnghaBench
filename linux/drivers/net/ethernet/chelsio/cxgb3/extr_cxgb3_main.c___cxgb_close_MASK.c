#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct port_info {int /*<<< orphan*/  port_id; TYPE_2__ mac; TYPE_3__ phy; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int open_device_map; int /*<<< orphan*/  tdev; int /*<<< orphan*/  adap_check_task; int /*<<< orphan*/  work_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* power_down ) (TYPE_3__*,int) ;} ;

/* Variables and functions */
 scalar_t__ A_XGM_INT_STATUS ; 
 int MAC_DIRECTION_RX ; 
 int MAC_DIRECTION_TX ; 
 int /*<<< orphan*/  OFFLOAD_PORT_DOWN ; 
 int PORT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int) ; 
 struct port_info* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev, int on_wq)
{
	struct port_info *pi = FUNC4(dev);
	struct adapter *adapter = pi->adapter;

	
	if (!adapter->open_device_map)
		return 0;

	/* Stop link fault interrupts */
	FUNC13(adapter, pi->port_id);
	FUNC12(adapter, A_XGM_INT_STATUS + pi->mac.offset);

	FUNC11(adapter, pi->port_id);
	FUNC6(dev);
	pi->phy.ops->power_down(&pi->phy, 1);
	FUNC5(dev);
	FUNC10(&pi->mac, MAC_DIRECTION_TX | MAC_DIRECTION_RX);

	FUNC7(&adapter->work_lock);	/* sync with update task */
	FUNC1(pi->port_id, &adapter->open_device_map);
	FUNC8(&adapter->work_lock);

	if (!(adapter->open_device_map & PORT_MASK))
		FUNC0(&adapter->adap_check_task);

	if (!adapter->open_device_map)
		FUNC3(adapter, on_wq);

	FUNC2(&adapter->tdev, OFFLOAD_PORT_DOWN, pi->port_id);
	return 0;
}