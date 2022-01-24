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
struct cxl_afu {int /*<<< orphan*/  max_procs_virtualised; int /*<<< orphan*/  num_procs; int /*<<< orphan*/  current_mode; int /*<<< orphan*/  slice; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_MODE_DIRECTED ; 
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*) ; 
 int FUNC1 (struct cxl_afu*) ; 
 int FUNC2 (struct cxl_afu*) ; 
 int FUNC3 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cxl_afu *afu)
{
	int rc;

	FUNC5(&afu->dev, "Activating AFU(%d) directed mode\n", afu->slice);

	afu->current_mode = CXL_MODE_DIRECTED;

	afu->num_procs = afu->max_procs_virtualised;

	if ((rc = FUNC1(afu)))
		return rc;

	if ((rc = FUNC3(afu)))
		goto err;

	if ((rc = FUNC2(afu)))
		goto err1;

	return 0;
err1:
	FUNC4(afu);
err:
	FUNC0(afu);
	return rc;
}