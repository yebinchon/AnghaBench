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
struct cxl_afu {int num_procs; int /*<<< orphan*/  current_mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_AURP0_An ; 
 int /*<<< orphan*/  CXL_AURP1_An ; 
 int /*<<< orphan*/  CXL_CSRP_An ; 
 int /*<<< orphan*/  CXL_HAURP_An ; 
 int /*<<< orphan*/  CXL_MODE_DEDICATED ; 
 int /*<<< orphan*/  CXL_PSL_AMOR_An ; 
 int /*<<< orphan*/  CXL_PSL_CtxTime_An ; 
 int /*<<< orphan*/  CXL_PSL_LPID_An ; 
 int /*<<< orphan*/  CXL_PSL_SCNTL_An ; 
 int CXL_PSL_SCNTL_An_PM_Process ; 
 int /*<<< orphan*/  CXL_PSL_SDR_An ; 
 int /*<<< orphan*/  CXL_PSL_SPAP_An ; 
 int /*<<< orphan*/  SPRN_LPID ; 
 int /*<<< orphan*/  SPRN_SDR1 ; 
 int FUNC0 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_afu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_afu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct cxl_afu *afu)
{
	FUNC3(&afu->dev, "Activating dedicated process mode\n");

	FUNC1(afu, CXL_PSL_SCNTL_An, CXL_PSL_SCNTL_An_PM_Process);

	FUNC1(afu, CXL_PSL_CtxTime_An, 0); /* disable */
	FUNC1(afu, CXL_PSL_SPAP_An, 0);    /* disable */
	FUNC1(afu, CXL_PSL_AMOR_An, 0xFFFFFFFFFFFFFFFFULL);
	FUNC1(afu, CXL_PSL_LPID_An, FUNC4(SPRN_LPID));
	FUNC1(afu, CXL_HAURP_An, 0);       /* disable */
	FUNC1(afu, CXL_PSL_SDR_An, FUNC4(SPRN_SDR1));

	FUNC2(afu, CXL_CSRP_An, 0);        /* disable */
	FUNC2(afu, CXL_AURP0_An, 0);       /* disable */
	FUNC2(afu, CXL_AURP1_An, 0);       /* disable */

	afu->current_mode = CXL_MODE_DEDICATED;
	afu->num_procs = 1;

	return FUNC0(afu);
}