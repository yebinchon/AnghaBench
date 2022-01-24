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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  cp; scalar_t__ page_address; int /*<<< orphan*/  block_address; } ;
struct TYPE_4__ {TYPE_1__ param; } ;
struct msb_data {int command_need_oob; int /*<<< orphan*/  erased_blocks_bitmap; int /*<<< orphan*/  command_value; TYPE_2__ regs; scalar_t__ read_only; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  MEMSTICK_CP_BLOCK ; 
 int /*<<< orphan*/  MS_CMD_BLOCK_ERASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h_msb_send_command ; 
 int /*<<< orphan*/  FUNC3 (struct msb_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msb_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct msb_data*,int) ; 
 int FUNC6 (struct msb_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct msb_data *msb, u16 pba)
{
	int error, try;
	if (msb->read_only)
		return -EROFS;

	FUNC2("erasing pba %d", pba);

	for (try = 1; try < 3; try++) {
		msb->regs.param.block_address = FUNC1(pba);
		msb->regs.param.page_address = 0;
		msb->regs.param.cp = MEMSTICK_CP_BLOCK;
		msb->command_value = MS_CMD_BLOCK_ERASE;
		msb->command_need_oob = false;


		error = FUNC6(msb, h_msb_send_command);
		if (!error || FUNC5(msb, true))
			break;
	}

	if (error) {
		FUNC7("erase failed, marking pba %d as bad", pba);
		FUNC3(msb, pba);
	}

	FUNC2("erase success, marking pba %d as unused", pba);
	FUNC4(msb, pba);
	FUNC0(pba, msb->erased_blocks_bitmap);
	return error;
}