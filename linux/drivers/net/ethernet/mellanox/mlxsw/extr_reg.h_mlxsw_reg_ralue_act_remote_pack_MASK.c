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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  enum mlxsw_reg_ralue_trap_action { ____Placeholder_mlxsw_reg_ralue_trap_action } mlxsw_reg_ralue_trap_action ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_RALUE_ACTION_TYPE_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC5(char *payload,
				enum mlxsw_reg_ralue_trap_action trap_action,
				u16 trap_id, u32 adjacency_index, u16 ecmp_size)
{
	FUNC0(payload,
					MLXSW_REG_RALUE_ACTION_TYPE_REMOTE);
	FUNC3(payload, trap_action);
	FUNC4(payload, trap_id);
	FUNC1(payload, adjacency_index);
	FUNC2(payload, ecmp_size);
}