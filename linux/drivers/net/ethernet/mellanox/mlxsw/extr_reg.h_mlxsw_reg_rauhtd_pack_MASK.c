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
typedef  enum mlxsw_reg_rauhtd_type { ____Placeholder_mlxsw_reg_rauhtd_type } mlxsw_reg_rauhtd_type ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_RAUHTD_FILTER_A ; 
 int /*<<< orphan*/  MLXSW_REG_RAUHTD_OP_DUMP_AND_CLEAR ; 
 int /*<<< orphan*/  MLXSW_REG_RAUHTD_REC_MAX_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  rauhtd ; 

__attribute__((used)) static inline void FUNC6(char *payload,
					 enum mlxsw_reg_rauhtd_type type)
{
	FUNC0(rauhtd, payload);
	FUNC2(payload, MLXSW_REG_RAUHTD_FILTER_A);
	FUNC4(payload, MLXSW_REG_RAUHTD_OP_DUMP_AND_CLEAR);
	FUNC3(payload, MLXSW_REG_RAUHTD_REC_MAX_NUM);
	FUNC1(payload, 1);
	FUNC5(payload, type);
}