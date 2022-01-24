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
struct cxl_afu {int /*<<< orphan*/  current_mode; TYPE_1__* native; int /*<<< orphan*/  max_procs_virtualised; int /*<<< orphan*/  num_procs; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_MODE_DIRECTED ; 
 int /*<<< orphan*/  CXL_PSL_AMOR_An ; 
 int /*<<< orphan*/  CXL_PSL_ID_An ; 
 int CXL_PSL_ID_An_F ; 
 int CXL_PSL_ID_An_L ; 
 int /*<<< orphan*/  CXL_PSL_SCNTL_An ; 
 int CXL_PSL_SCNTL_An_PM_AFU ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*) ; 
 scalar_t__ FUNC1 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_afu*) ; 
 int FUNC3 (struct cxl_afu*) ; 
 int FUNC4 (struct cxl_afu*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cxl_afu*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC8 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC10(struct cxl_afu *afu)
{
	int rc;

	FUNC9(&afu->dev, "Activating AFU directed mode\n");

	afu->num_procs = afu->max_procs_virtualised;
	if (afu->native->spa == NULL) {
		if (FUNC1(afu, CXL_MODE_DIRECTED))
			return -ENOMEM;
	}
	FUNC0(afu);

	FUNC6(afu, CXL_PSL_SCNTL_An, CXL_PSL_SCNTL_An_PM_AFU);
	if (FUNC5())
		FUNC6(afu, CXL_PSL_AMOR_An, 0xFFFFFFFFFFFFFFFFULL);
	FUNC6(afu, CXL_PSL_ID_An, CXL_PSL_ID_An_F | CXL_PSL_ID_An_L);

	afu->current_mode = CXL_MODE_DIRECTED;

	if ((rc = FUNC3(afu)))
		return rc;

	if ((rc = FUNC7(afu)))
		goto err;

	if ((rc = FUNC4(afu)))
		goto err1;

	return 0;
err1:
	FUNC8(afu);
err:
	FUNC2(afu);
	return rc;
}