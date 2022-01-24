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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* adapter_reset ) (struct cxl*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl*) ; 
 TYPE_1__* cxl_ops ; 
 int FUNC2 (char const*,char*,int*) ; 
 int FUNC3 (struct cxl*) ; 
 int FUNC4 (struct cxl*) ; 
 struct cxl* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *device,
				   struct device_attribute *attr,
				   const char *buf, size_t count)
{
	struct cxl *adapter = FUNC5(device);
	int rc;
	int val;

	rc = FUNC2(buf, "%i", &val);
	if ((rc != 1) || (val != 1 && val != -1))
		return -EINVAL;

	/*
	 * See if we can lock the context mapping that's only allowed
	 * when there are no contexts attached to the adapter. Once
	 * taken this will also prevent any context from getting activated.
	 */
	if (val == 1) {
		rc =  FUNC0(adapter);
		if (rc)
			goto out;

		rc = cxl_ops->adapter_reset(adapter);
		/* In case reset failed release context lock */
		if (rc)
			FUNC1(adapter);

	} else if (val == -1) {
		/* Perform a forced adapter reset */
		rc = cxl_ops->adapter_reset(adapter);
	}

out:
	return rc ? rc : count;
}