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
struct cxl_afu {int /*<<< orphan*/  contexts_lock; int /*<<< orphan*/  contexts_idr; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* afu_reset ) (struct cxl_afu*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 TYPE_1__* cxl_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cxl_afu*) ; 
 struct cxl_afu* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *device,
			       struct device_attribute *attr,
			       const char *buf, size_t count)
{
	struct cxl_afu *afu = FUNC4(device);
	int rc;

	/* Not safe to reset if it is currently in use */
	FUNC1(&afu->contexts_lock);
	if (!FUNC0(&afu->contexts_idr)) {
		rc = -EBUSY;
		goto err;
	}

	if ((rc = cxl_ops->afu_reset(afu)))
		goto err;

	rc = count;
err:
	FUNC2(&afu->contexts_lock);
	return rc;
}