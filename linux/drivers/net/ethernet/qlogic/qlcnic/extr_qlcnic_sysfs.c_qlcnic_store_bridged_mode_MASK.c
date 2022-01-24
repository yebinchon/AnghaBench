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
struct qlcnic_adapter {int /*<<< orphan*/  state; TYPE_1__* ahw; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int capabilities; } ;

/* Variables and functions */
 int EINVAL ; 
 int QLCNIC_FW_CAPABILITY_BDG ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 struct qlcnic_adapter* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t len)
{
	struct qlcnic_adapter *adapter = FUNC0(dev);
	unsigned long new;
	int ret = -EINVAL;

	if (!(adapter->ahw->capabilities & QLCNIC_FW_CAPABILITY_BDG))
		goto err_out;

	if (!FUNC3(__QLCNIC_DEV_UP, &adapter->state))
		goto err_out;

	if (FUNC1(buf, 2, &new))
		goto err_out;

	if (!FUNC2(adapter, !!new))
		ret = len;

err_out:
	return ret;
}