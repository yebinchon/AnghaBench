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
struct adapter {int /*<<< orphan*/  pf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 struct port_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,struct port_info*,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct port_info *pi = FUNC2(dev);
	struct adapter *adapter = pi->adapter;
	int ret;

	FUNC4(dev);
	FUNC3(dev);
	ret = FUNC5(adapter, adapter->pf, pi,
				  false, false, false);
#ifdef CONFIG_CHELSIO_T4_DCB
	cxgb4_dcb_reset(dev);
	dcb_tx_queue_prio_enable(dev, false);
#endif
	return ret;
}