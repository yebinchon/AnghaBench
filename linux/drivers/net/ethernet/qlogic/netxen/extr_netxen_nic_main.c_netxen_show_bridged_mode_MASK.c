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
struct netxen_adapter {int capabilities; int flags; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int NETXEN_NIC_BRIDGE_ENABLED ; 
 int NX_FW_CAPABILITY_BDG ; 
 struct netxen_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct net_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct net_device *net = FUNC2(dev);
	struct netxen_adapter *adapter;
	int bridged_mode = 0;

	adapter = FUNC0(net);

	if (adapter->capabilities & NX_FW_CAPABILITY_BDG)
		bridged_mode = !!(adapter->flags & NETXEN_NIC_BRIDGE_ENABLED);

	return FUNC1(buf, "%d\n", bridged_mode);
}