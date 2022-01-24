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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_afa_block {int finished; int /*<<< orphan*/  cur_set; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MLXSW_AFA_SET_GOTO_BINDING_CMD_JUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct mlxsw_afa_block *block, u16 group_id)
{
	if (block->finished)
		return -EINVAL;
	FUNC0(block->cur_set,
			       MLXSW_AFA_SET_GOTO_BINDING_CMD_JUMP, group_id);
	block->finished = true;
	return 0;
}