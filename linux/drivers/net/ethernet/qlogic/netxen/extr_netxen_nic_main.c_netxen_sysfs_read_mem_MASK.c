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
typedef  int /*<<< orphan*/  u64 ;
struct netxen_adapter {scalar_t__ (* pci_mem_read ) (struct netxen_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EIO ; 
 struct netxen_adapter* FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (struct netxen_adapter*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (struct netxen_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC5(struct file *filp, struct kobject *kobj,
		struct bin_attribute *attr,
		char *buf, loff_t offset, size_t size)
{
	struct device *dev = FUNC1(kobj);
	struct netxen_adapter *adapter = FUNC0(dev);
	u64 data;
	int ret;

	ret = FUNC3(adapter, offset, size);
	if (ret != 0)
		return ret;

	if (adapter->pci_mem_read(adapter, offset, &data))
		return -EIO;

	FUNC2(buf, &data, size);

	return size;
}