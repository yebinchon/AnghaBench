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
struct net_device {size_t if_port; int /*<<< orphan*/  features; struct adapter* ml_priv; } ;
struct TYPE_2__ {scalar_t__ stats_update_period; } ;
struct adapter {int open_device_map; TYPE_1__ params; int /*<<< orphan*/ * port; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int PORT_MASK ; 
 int /*<<< orphan*/  FUNC0 (size_t,int*) ; 
 int FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	int err;
	struct adapter *adapter = dev->ml_priv;
	int other_ports = adapter->open_device_map & PORT_MASK;

	FUNC4(&adapter->napi);
	if (!adapter->open_device_map && (err = FUNC1(adapter)) < 0) {
		FUNC3(&adapter->napi);
		return err;
	}

	FUNC0(dev->if_port, &adapter->open_device_map);
	FUNC2(&adapter->port[dev->if_port]);
	FUNC5(dev);
	if (!other_ports && adapter->params.stats_update_period)
		FUNC6(adapter,
					  adapter->params.stats_update_period);

	FUNC7(adapter, dev->features);
	return 0;
}