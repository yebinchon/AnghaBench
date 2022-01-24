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
struct port_info {int /*<<< orphan*/  port_id; int /*<<< orphan*/  vlan_id; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int flags; scalar_t__ open_device_map; } ;

/* Variables and functions */
 int CXGB4VF_FW_OK ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int FUNC1 (struct adapter*) ; 
 int FUNC2 (struct net_device*) ; 
 struct port_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int FUNC7 (struct port_info*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	int err;
	struct port_info *pi = FUNC3(dev);
	struct adapter *adapter = pi->adapter;

	/*
	 * If we don't have a connection to the firmware there's nothing we
	 * can do.
	 */
	if (!(adapter->flags & CXGB4VF_FW_OK))
		return -ENXIO;

	/*
	 * If this is the first interface that we're opening on the "adapter",
	 * bring the "adapter" up now.
	 */
	if (adapter->open_device_map == 0) {
		err = FUNC1(adapter);
		if (err)
			return err;
	}

	/* It's possible that the basic port information could have
	 * changed since we first read it.
	 */
	err = FUNC7(pi);
	if (err < 0)
		return err;

	/*
	 * Note that this interface is up and start everything up ...
	 */
	err = FUNC2(dev);
	if (err)
		goto err_unwind;

	pi->vlan_id = FUNC6(adapter);

	FUNC4(dev);
	FUNC5(pi->port_id, &adapter->open_device_map);
	return 0;

err_unwind:
	if (adapter->open_device_map == 0)
		FUNC0(adapter);
	return err;
}