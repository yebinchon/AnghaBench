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
typedef  scalar_t__ u64 ;
typedef  size_t u32 ;
struct work_struct {int dummy; } ;
struct octeon_mbox {int /*<<< orphan*/  mbox_write_reg; int /*<<< orphan*/  mbox_int_reg; struct octeon_device* oct_dev; } ;
struct TYPE_2__ {size_t num_vfs_alloced; size_t rings_per_vf; } ;
struct octeon_device {scalar_t__ rev_id; struct octeon_mbox** mbox; TYPE_1__ sriov_info; } ;
struct cavium_wk {int /*<<< orphan*/  work; scalar_t__ ctxptr; } ;

/* Variables and functions */
 scalar_t__ OCTEON_CN23XX_REV_1_1 ; 
 scalar_t__ OCTEON_PFVFACK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_mbox*) ; 
 scalar_t__ FUNC2 (struct octeon_mbox*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct work_struct *work)
{
	struct cavium_wk *wk = (struct cavium_wk *)work;
	struct octeon_mbox *mbox = (struct octeon_mbox *)wk->ctxptr;
	struct octeon_device *oct = mbox->oct_dev;
	u64 mbox_int_val, val64;
	u32 q_no, i;

	if (oct->rev_id < OCTEON_CN23XX_REV_1_1) {
		/*read and clear by writing 1*/
		mbox_int_val = FUNC3(mbox->mbox_int_reg);
		FUNC5(mbox_int_val, mbox->mbox_int_reg);

		for (i = 0; i < oct->sriov_info.num_vfs_alloced; i++) {
			q_no = i * oct->sriov_info.rings_per_vf;

			val64 = FUNC3(oct->mbox[q_no]->mbox_write_reg);

			if (val64 && (val64 != OCTEON_PFVFACK)) {
				if (FUNC2(oct->mbox[q_no]))
					FUNC1(
					    oct->mbox[q_no]);
			}
		}

		FUNC4(&wk->work, FUNC0(10));
	} else {
		FUNC1(mbox);
	}
}