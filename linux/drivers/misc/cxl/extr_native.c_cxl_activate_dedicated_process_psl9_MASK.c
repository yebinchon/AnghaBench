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
struct cxl_afu {int num_procs; int /*<<< orphan*/  current_mode; TYPE_1__* native; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_MODE_DEDICATED ; 
 int /*<<< orphan*/  CXL_PSL_ID_An ; 
 int CXL_PSL_ID_An_F ; 
 int CXL_PSL_ID_An_L ; 
 int /*<<< orphan*/  CXL_PSL_SCNTL_An ; 
 int CXL_PSL_SCNTL_An_PM_Process ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*) ; 
 scalar_t__ FUNC1 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxl_afu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

int FUNC5(struct cxl_afu *afu)
{
	FUNC4(&afu->dev, "Activating dedicated process mode\n");

	/*
	 * If XSL is set to dedicated mode (Set in PSL_SCNTL reg), the
	 * XSL and AFU are programmed to work with a single context.
	 * The context information should be configured in the SPA area
	 * index 0 (so PSL_SPAP must be configured before enabling the
	 * AFU).
	 */
	afu->num_procs = 1;
	if (afu->native->spa == NULL) {
		if (FUNC1(afu, CXL_MODE_DEDICATED))
			return -ENOMEM;
	}
	FUNC0(afu);

	FUNC3(afu, CXL_PSL_SCNTL_An, CXL_PSL_SCNTL_An_PM_Process);
	FUNC3(afu, CXL_PSL_ID_An, CXL_PSL_ID_An_F | CXL_PSL_ID_An_L);

	afu->current_mode = CXL_MODE_DEDICATED;

	return FUNC2(afu);
}