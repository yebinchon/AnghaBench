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
struct TYPE_2__ {scalar_t__ ext_board_len; int /*<<< orphan*/ * ext_board_data; int /*<<< orphan*/ * ext_board; scalar_t__ board_len; int /*<<< orphan*/ * board_data; int /*<<< orphan*/ * board; } ;
struct ath10k {TYPE_1__ normal_mode_fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ath10k *ar)
{
	if (!FUNC0(ar->normal_mode_fw.board))
		FUNC1(ar->normal_mode_fw.board);

	if (!FUNC0(ar->normal_mode_fw.ext_board))
		FUNC1(ar->normal_mode_fw.ext_board);

	ar->normal_mode_fw.board = NULL;
	ar->normal_mode_fw.board_data = NULL;
	ar->normal_mode_fw.board_len = 0;
	ar->normal_mode_fw.ext_board = NULL;
	ar->normal_mode_fw.ext_board_data = NULL;
	ar->normal_mode_fw.ext_board_len = 0;
}