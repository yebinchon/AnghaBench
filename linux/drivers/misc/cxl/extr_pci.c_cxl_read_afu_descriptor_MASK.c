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
struct cxl_afu {int pp_size; int crs_len; int eb_len; int /*<<< orphan*/  dev; int /*<<< orphan*/  eb_offset; int /*<<< orphan*/  crs_offset; TYPE_1__* native; int /*<<< orphan*/  pp_psa; int /*<<< orphan*/  psa; int /*<<< orphan*/  modes_supported; int /*<<< orphan*/  crs_num; int /*<<< orphan*/  max_procs_virtualised; int /*<<< orphan*/  pp_irqs; } ;
struct TYPE_2__ {int /*<<< orphan*/  pp_offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC11 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC12 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC13 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC14 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC15 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC16 (struct cxl_afu*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CXL_MODE_DEDICATED ; 
 int /*<<< orphan*/  CXL_MODE_DIRECTED ; 
 int /*<<< orphan*/  CXL_MODE_TIME_SLICED ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct cxl_afu *afu)
{
	u64 val;

	val = FUNC14(afu);
	afu->pp_irqs = FUNC5(val);
	afu->max_procs_virtualised = FUNC6(val);
	afu->crs_num = FUNC4(val);

	if (FUNC0(val))
		afu->modes_supported |= CXL_MODE_DIRECTED;
	if (FUNC2(val))
		afu->modes_supported |= CXL_MODE_DEDICATED;
	if (FUNC17(val))
		afu->modes_supported |= CXL_MODE_TIME_SLICED;

	val = FUNC15(afu);
	afu->pp_size = FUNC7(val) * 4096;
	afu->psa = FUNC9(val);
	if ((afu->pp_psa = FUNC8(val)))
		afu->native->pp_offset = FUNC16(afu);

	val = FUNC10(afu);
	afu->crs_len = FUNC1(val) * 256;
	afu->crs_offset = FUNC11(afu);


	/* eb_len is in multiple of 4K */
	afu->eb_len = FUNC3(FUNC12(afu)) * 4096;
	afu->eb_offset = FUNC13(afu);

	/* eb_off is 4K aligned so lower 12 bits are always zero */
	if (FUNC18(afu->eb_offset, 0, 11) != 0) {
		FUNC20(&afu->dev,
			 "Invalid AFU error buffer offset %Lx\n",
			 afu->eb_offset);
		FUNC19(&afu->dev,
			 "Ignoring AFU error buffer in the descriptor\n");
		/* indicate that no afu buffer exists */
		afu->eb_len = 0;
	}

	return 0;
}