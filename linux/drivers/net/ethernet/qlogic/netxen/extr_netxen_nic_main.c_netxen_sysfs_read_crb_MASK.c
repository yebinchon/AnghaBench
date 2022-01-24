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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETXEN_PCI_CAMQM ; 
 int /*<<< orphan*/  NETXEN_PCI_CAMQM_2M_END ; 
 int /*<<< orphan*/  FUNC1 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct netxen_adapter* FUNC3 (struct device*) ; 
 struct device* FUNC4 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct netxen_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct netxen_adapter*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static ssize_t
FUNC8(struct file *filp, struct kobject *kobj,
		struct bin_attribute *attr,
		char *buf, loff_t offset, size_t size)
{
	struct device *dev = FUNC4(kobj);
	struct netxen_adapter *adapter = FUNC3(dev);
	u32 data;
	u64 qmdata;
	int ret;

	ret = FUNC7(adapter, offset, size);
	if (ret != 0)
		return ret;

	if (FUNC2(adapter->ahw.revision_id) &&
		FUNC0(offset, NETXEN_PCI_CAMQM,
					NETXEN_PCI_CAMQM_2M_END)) {
		FUNC6(adapter, offset, &qmdata);
		FUNC5(buf, &qmdata, size);
	} else {
		data = FUNC1(adapter, offset);
		FUNC5(buf, &data, size);
	}

	return size;
}