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
typedef  scalar_t__ u32 ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {struct firmware* board; } ;
struct TYPE_4__ {int /*<<< orphan*/  bmi_board_id; int /*<<< orphan*/  bmi_chip_id; scalar_t__ bmi_ids_valid; } ;
struct ath10k {int /*<<< orphan*/  bd_api; TYPE_1__ normal_mode_fw; TYPE_2__ id; } ;
typedef  int /*<<< orphan*/  boardinfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 

void FUNC4(struct ath10k *ar)
{
	char boardinfo[100];
	const struct firmware *board;
	u32 crc;

	if (ar->id.bmi_ids_valid)
		FUNC3(boardinfo, sizeof(boardinfo), "%d:%d",
			  ar->id.bmi_chip_id, ar->id.bmi_board_id);
	else
		FUNC3(boardinfo, sizeof(boardinfo), "N/A");

	board = ar->normal_mode_fw.board;
	if (!FUNC0(board))
		crc = FUNC2(0, board->data, board->size);
	else
		crc = 0;

	FUNC1(ar, "board_file api %d bmi_id %s crc32 %08x",
		    ar->bd_api,
		    boardinfo,
		    crc);
}