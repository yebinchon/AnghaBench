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
struct mlxsw_afa_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  MLXSW_AFA_TRAPDISC_CODE ; 
 int /*<<< orphan*/  MLXSW_AFA_TRAPDISC_FORWARD_ACTION_DISCARD ; 
 int /*<<< orphan*/  MLXSW_AFA_TRAPDISC_SIZE ; 
 int /*<<< orphan*/  MLXSW_AFA_TRAPDISC_TRAP_ACTION_TRAP ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (struct mlxsw_afa_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct mlxsw_afa_block *block, u16 trap_id)
{
	char *act = FUNC2(block,
						  MLXSW_AFA_TRAPDISC_CODE,
						  MLXSW_AFA_TRAPDISC_SIZE);

	if (FUNC0(act))
		return FUNC1(act);
	FUNC3(act, MLXSW_AFA_TRAPDISC_TRAP_ACTION_TRAP,
				MLXSW_AFA_TRAPDISC_FORWARD_ACTION_DISCARD,
				trap_id);
	return 0;
}