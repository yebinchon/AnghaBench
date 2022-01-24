#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {struct octeon_mbox* ctxptr; int /*<<< orphan*/  work; } ;
struct octeon_mbox {int /*<<< orphan*/ * mbox_read_reg; TYPE_2__ mbox_poll_wk; int /*<<< orphan*/ * mbox_write_reg; int /*<<< orphan*/ * mbox_int_reg; int /*<<< orphan*/  state; scalar_t__ q_no; struct octeon_device* oct_dev; int /*<<< orphan*/  lock; } ;
struct octeon_device {struct octeon_mbox** mbox; TYPE_1__* mmio; } ;
struct TYPE_3__ {scalar_t__ hw_addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCTEON_MBOX_STATE_IDLE ; 
 int /*<<< orphan*/  OCTEON_PFVFSIG ; 
 int /*<<< orphan*/  cn23xx_vf_mbox_thread ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_mbox*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct octeon_mbox* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct octeon_device *oct)
{
	struct octeon_mbox *mbox = NULL;

	mbox = FUNC5(sizeof(*mbox));
	if (!mbox)
		return 1;

	FUNC3(mbox, 0, sizeof(struct octeon_mbox));

	FUNC4(&mbox->lock);

	mbox->oct_dev = oct;

	mbox->q_no = 0;

	mbox->state = OCTEON_MBOX_STATE_IDLE;

	/* VF mbox interrupt reg */
	mbox->mbox_int_reg =
	    (u8 *)oct->mmio[0].hw_addr + FUNC1(0);
	/* VF reads from SIG0 reg */
	mbox->mbox_read_reg =
	    (u8 *)oct->mmio[0].hw_addr + FUNC0(0, 0);
	/* VF writes into SIG1 reg */
	mbox->mbox_write_reg =
	    (u8 *)oct->mmio[0].hw_addr + FUNC0(0, 1);

	FUNC2(&mbox->mbox_poll_wk.work,
			  cn23xx_vf_mbox_thread);

	mbox->mbox_poll_wk.ctxptr = mbox;

	oct->mbox[0] = mbox;

	FUNC6(OCTEON_PFVFSIG, mbox->mbox_read_reg);

	return 0;
}