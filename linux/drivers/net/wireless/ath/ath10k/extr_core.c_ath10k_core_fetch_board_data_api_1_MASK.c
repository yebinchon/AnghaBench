#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {struct firmware const* ext_board; int /*<<< orphan*/  ext_board_len; int /*<<< orphan*/  ext_board_data; struct firmware const* board; int /*<<< orphan*/  board_len; int /*<<< orphan*/  board_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  eboard; int /*<<< orphan*/  dir; int /*<<< orphan*/  board; } ;
struct TYPE_5__ {TYPE_1__ fw; } ;
struct ath10k {TYPE_3__ normal_mode_fw; TYPE_2__ hw_params; } ;

/* Variables and functions */
 int ATH10K_BD_IE_BOARD ; 
 int ATH10K_BD_IE_BOARD_EXT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct firmware const*) ; 
 int FUNC1 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*) ; 
 void* FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar, int bd_ie_type)
{
	const struct firmware *fw;

	if (bd_ie_type == ATH10K_BD_IE_BOARD) {
		if (!ar->hw_params.fw.board) {
			FUNC2(ar, "failed to find board file fw entry\n");
			return -EINVAL;
		}

		ar->normal_mode_fw.board = FUNC3(ar,
								ar->hw_params.fw.dir,
								ar->hw_params.fw.board);
		if (FUNC0(ar->normal_mode_fw.board))
			return FUNC1(ar->normal_mode_fw.board);

		ar->normal_mode_fw.board_data = ar->normal_mode_fw.board->data;
		ar->normal_mode_fw.board_len = ar->normal_mode_fw.board->size;
	} else if (bd_ie_type == ATH10K_BD_IE_BOARD_EXT) {
		if (!ar->hw_params.fw.eboard) {
			FUNC2(ar, "failed to find eboard file fw entry\n");
			return -EINVAL;
		}

		fw = FUNC3(ar, ar->hw_params.fw.dir,
					  ar->hw_params.fw.eboard);
		ar->normal_mode_fw.ext_board = fw;
		if (FUNC0(ar->normal_mode_fw.ext_board))
			return FUNC1(ar->normal_mode_fw.ext_board);

		ar->normal_mode_fw.ext_board_data = ar->normal_mode_fw.ext_board->data;
		ar->normal_mode_fw.ext_board_len = ar->normal_mode_fw.ext_board->size;
	}

	return 0;
}