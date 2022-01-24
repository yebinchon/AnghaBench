#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct port_info {int /*<<< orphan*/  port_id; int /*<<< orphan*/  nqsets; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int open_device_map; int /*<<< orphan*/  tdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFFLOAD_PORT_UP ; 
 int PORT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct adapter*) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct port_info* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  ofld_disable ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct port_info *pi = FUNC4(dev);
	struct adapter *adapter = pi->adapter;
	int other_ports = adapter->open_device_map & PORT_MASK;
	int err;

	if (!adapter->open_device_map && (err = FUNC1(adapter)) < 0)
		return err;

	FUNC11(pi->port_id, &adapter->open_device_map);
	if (FUNC2(adapter) && !ofld_disable) {
		err = FUNC8(dev);
		if (err)
			FUNC9("Could not initialize offload capabilities\n");
	}

	FUNC6(dev, pi->nqsets);
	err = FUNC5(dev, pi->nqsets);
	if (err)
		return err;
	FUNC3(dev);
	FUNC12(adapter, pi->port_id);
	FUNC7(dev);
	if (!other_ports)
		FUNC10(adapter);

	FUNC0(&adapter->tdev, OFFLOAD_PORT_UP, pi->port_id);
	return 0;
}