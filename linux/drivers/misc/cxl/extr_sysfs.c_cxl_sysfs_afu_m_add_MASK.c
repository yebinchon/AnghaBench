#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct cxl_afu {int /*<<< orphan*/  chardev_m; } ;
struct TYPE_4__ {scalar_t__ (* support_attributes ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (struct device_attribute*) ; 
 int /*<<< orphan*/  CXL_AFU_MASTER_ATTRS ; 
 struct device_attribute* afu_master_attrs ; 
 TYPE_2__* cxl_ops ; 
 int FUNC1 (int /*<<< orphan*/ ,struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct device_attribute*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct cxl_afu *afu)
{
	struct device_attribute *dev_attr;
	int i, rc;

	for (i = 0; i < FUNC0(afu_master_attrs); i++) {
		dev_attr = &afu_master_attrs[i];
		if (cxl_ops->support_attributes(dev_attr->attr.name,
						CXL_AFU_MASTER_ATTRS)) {
			if ((rc = FUNC1(afu->chardev_m, &afu_master_attrs[i])))
				goto err;
		}
	}

	return 0;

err:
	for (i--; i >= 0; i--) {
		dev_attr = &afu_master_attrs[i];
		if (cxl_ops->support_attributes(dev_attr->attr.name,
						CXL_AFU_MASTER_ATTRS))
			FUNC2(afu->chardev_m, &afu_master_attrs[i]);
	}
	return rc;
}