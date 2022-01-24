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
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int flags; } ;

/* Variables and functions */
 int CXGB4_FULL_INIT_DONE ; 
 int FUNC0 (struct adapter*) ; 
 int FUNC1 (struct net_device*) ; 
 struct port_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct port_info*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	int err;
	struct port_info *pi = FUNC2(dev);
	struct adapter *adapter = pi->adapter;

	FUNC3(dev);

	if (!(adapter->flags & CXGB4_FULL_INIT_DONE)) {
		err = FUNC0(adapter);
		if (err < 0)
			return err;
	}

	/* It's possible that the basic port information could have
	 * changed since we first read it.
	 */
	err = FUNC5(pi);
	if (err < 0)
		return err;

	err = FUNC1(dev);
	if (!err)
		FUNC4(dev);
	return err;
}