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
struct cxl_afu {int current_mode; int /*<<< orphan*/  contexts_lock; scalar_t__ num_procs; int /*<<< orphan*/  contexts_idr; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* afu_deactivate_mode ) (struct cxl_afu*,int) ;int (* afu_activate_mode ) (struct cxl_afu*,int) ;} ;

/* Variables and functions */
 int CXL_MODE_DEDICATED ; 
 int CXL_MODE_DIRECTED ; 
 int EBUSY ; 
 int EINVAL ; 
 TYPE_1__* cxl_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 int FUNC4 (struct cxl_afu*,int) ; 
 int FUNC5 (struct cxl_afu*,int) ; 
 struct cxl_afu* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *device, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct cxl_afu *afu = FUNC6(device);
	int old_mode, mode = -1;
	int rc = -EBUSY;

	/* can't change this if we have a user */
	FUNC1(&afu->contexts_lock);
	if (!FUNC0(&afu->contexts_idr))
		goto err;

	if (!FUNC3(buf, "dedicated_process", 17))
		mode = CXL_MODE_DEDICATED;
	if (!FUNC3(buf, "afu_directed", 12))
		mode = CXL_MODE_DIRECTED;
	if (!FUNC3(buf, "none", 4))
		mode = 0;

	if (mode == -1) {
		rc = -EINVAL;
		goto err;
	}

	/*
	 * afu_deactivate_mode needs to be done outside the lock, prevent
	 * other contexts coming in before we are ready:
	 */
	old_mode = afu->current_mode;
	afu->current_mode = 0;
	afu->num_procs = 0;

	FUNC2(&afu->contexts_lock);

	if ((rc = cxl_ops->afu_deactivate_mode(afu, old_mode)))
		return rc;
	if ((rc = cxl_ops->afu_activate_mode(afu, mode)))
		return rc;

	return count;
err:
	FUNC2(&afu->contexts_lock);
	return rc;
}