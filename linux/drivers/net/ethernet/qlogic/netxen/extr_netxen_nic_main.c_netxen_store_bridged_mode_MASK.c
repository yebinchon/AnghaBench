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
struct netxen_adapter {int capabilities; scalar_t__ is_up; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NETXEN_ADAPTER_UP_MAGIC ; 
 int NX_FW_CAPABILITY_BDG ; 
 scalar_t__ FUNC0 (char const*,int,unsigned long*) ; 
 struct netxen_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct netxen_adapter*,int) ; 
 struct net_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	struct net_device *net = FUNC3(dev);
	struct netxen_adapter *adapter = FUNC1(net);
	unsigned long new;
	int ret = -EINVAL;

	if (!(adapter->capabilities & NX_FW_CAPABILITY_BDG))
		goto err_out;

	if (adapter->is_up != NETXEN_ADAPTER_UP_MAGIC)
		goto err_out;

	if (FUNC0(buf, 2, &new))
		goto err_out;

	if (!FUNC2(adapter, !!new))
		ret = len;

err_out:
	return ret;
}