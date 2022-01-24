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
typedef  int u32 ;
struct aq_hw_s {int rbl_enabled; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HW_ATL_FW_VER_1X ; 
 int /*<<< orphan*/  HW_ATL_MPI_BOOT_EXIT_CODE ; 
 int /*<<< orphan*/  HW_ATL_MPI_DAISY_CHAIN_STATUS ; 
 int /*<<< orphan*/  HW_ATL_MPI_FW_VERSION ; 
 int HW_ATL_MPI_STATE_MSK ; 
 int MPI_DEINIT ; 
 int FUNC0 (struct aq_hw_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  hw_atl_utils_mpi_get_state ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,int) ; 
 int FUNC3 (struct aq_hw_s*) ; 
 int FUNC4 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct aq_hw_s*,int,int,int,unsigned int) ; 

int FUNC7(struct aq_hw_s *self)
{
	int k;
	u32 boot_exit_code = 0;
	u32 val;

	for (k = 0; k < 1000; ++k) {
		u32 flb_status = FUNC0(self,
						HW_ATL_MPI_DAISY_CHAIN_STATUS);
		boot_exit_code = FUNC0(self,
						HW_ATL_MPI_BOOT_EXIT_CODE);
		if (flb_status != 0x06000000 || boot_exit_code != 0)
			break;
	}

	if (k == 1000) {
		FUNC1("Neither RBL nor FLB firmware started\n");
		return -EOPNOTSUPP;
	}

	self->rbl_enabled = (boot_exit_code != 0);

	/* FW 1.x may bootup in an invalid POWER state (WOL feature).
	 * We should work around this by forcing its state back to DEINIT
	 */
	if (!FUNC5(HW_ATL_FW_VER_1X,
				    FUNC0(self,
						   HW_ATL_MPI_FW_VERSION))) {
		int err = 0;

		FUNC2(self, MPI_DEINIT);
		err = FUNC6(hw_atl_utils_mpi_get_state,
						self, val,
						(val & HW_ATL_MPI_STATE_MSK) ==
						 MPI_DEINIT,
						10, 10000U);
		if (err)
			return err;
	}

	if (self->rbl_enabled)
		return FUNC4(self);
	else
		return FUNC3(self);
}