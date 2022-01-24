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
typedef  scalar_t__ u32 ;
struct hw_atl_utils_mbox_header {scalar_t__ transaction_id; } ;
struct aq_hw_s {int dummy; } ;
typedef  enum hal_atl_utils_fw_state_e { ____Placeholder_hal_atl_utils_fw_state_e } hal_atl_utils_fw_state_e ;

/* Variables and functions */
 int /*<<< orphan*/  HW_ATL_MPI_CONTROL_ADR ; 
 scalar_t__ HW_ATL_MPI_DIRTY_WAKE_MSK ; 
 scalar_t__ HW_ATL_MPI_STATE_MSK ; 
 int MPI_DEINIT ; 
 int MPI_POWER ; 
 int MPI_RESET ; 
 scalar_t__ FUNC0 (struct aq_hw_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  hw_atl_utils_get_mpi_mbox_tid ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,struct hw_atl_utils_mbox_header*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct aq_hw_s*,scalar_t__,int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct aq_hw_s *self,
				      enum hal_atl_utils_fw_state_e state)
{
	int err = 0;
	u32 transaction_id = 0;
	struct hw_atl_utils_mbox_header mbox;
	u32 val = FUNC0(self, HW_ATL_MPI_CONTROL_ADR);

	if (state == MPI_RESET) {
		FUNC2(self, &mbox);

		transaction_id = mbox.transaction_id;

		err = FUNC3(hw_atl_utils_get_mpi_mbox_tid,
						self, mbox.transaction_id,
						transaction_id !=
						mbox.transaction_id,
						1000U, 100000U);
		if (err < 0)
			goto err_exit;
	}
	/* On interface DEINIT we disable DW (raise bit)
	 * Otherwise enable DW (clear bit)
	 */
	if (state == MPI_DEINIT || state == MPI_POWER)
		val |= HW_ATL_MPI_DIRTY_WAKE_MSK;
	else
		val &= ~HW_ATL_MPI_DIRTY_WAKE_MSK;

	/* Set new state bits */
	val = val & ~HW_ATL_MPI_STATE_MSK;
	val |= state & HW_ATL_MPI_STATE_MSK;

	FUNC1(self, HW_ATL_MPI_CONTROL_ADR, val);
err_exit:
	return err;
}