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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_2__ {int block_size; } ;
struct ath6kl {TYPE_1__ mbox_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_TRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath6kl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath6kl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hi_mbox_io_block_sz ; 
 int /*<<< orphan*/  hi_mbox_isr_yield_limit ; 

__attribute__((used)) static int FUNC5(struct ath6kl *ar, u32 mbox_isr_yield_val,
				 u8 htc_ctrl_buf)
{
	int status;
	u32 blk_size;

	blk_size = ar->mbox_info.block_size;

	if (htc_ctrl_buf)
		blk_size |=  ((u32)htc_ctrl_buf) << 16;

	/* set the host interest area for the block size */
	status = FUNC1(ar, hi_mbox_io_block_sz, blk_size);
	if (status) {
		FUNC3("bmi_write_memory for IO block size failed\n");
		goto out;
	}

	FUNC2(ATH6KL_DBG_TRC, "block size set: %d (target addr:0x%X)\n",
		   blk_size,
		   FUNC4(ar, FUNC0(hi_mbox_io_block_sz)));

	if (mbox_isr_yield_val) {
		/* set the host interest area for the mbox ISR yield limit */
		status = FUNC1(ar, hi_mbox_isr_yield_limit,
					       mbox_isr_yield_val);
		if (status) {
			FUNC3("bmi_write_memory for yield limit failed\n");
			goto out;
		}
	}

out:
	return status;
}