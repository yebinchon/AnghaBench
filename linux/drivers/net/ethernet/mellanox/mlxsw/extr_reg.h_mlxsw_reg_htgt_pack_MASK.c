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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 scalar_t__ MLXSW_REG_HTGT_INVALID_POLICER ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_PATH_TYPE_LOCAL ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_POLICER_DISABLE ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_POLICER_ENABLE ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_TRAP_TO_CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  htgt ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC10(char *payload, u8 group, u8 policer_id,
				       u8 priority, u8 tc)
{
	FUNC0(htgt, payload);

	if (policer_id == MLXSW_REG_HTGT_INVALID_POLICER) {
		FUNC6(payload,
					MLXSW_REG_HTGT_POLICER_DISABLE);
	} else {
		FUNC6(payload,
					MLXSW_REG_HTGT_POLICER_ENABLE);
		FUNC5(payload, policer_id);
	}

	FUNC9(payload, MLXSW_REG_HTGT_PATH_TYPE_LOCAL);
	FUNC8(payload, group);
	FUNC3(payload, MLXSW_REG_HTGT_TRAP_TO_CPU);
	FUNC4(payload, 0);
	FUNC7(payload, priority);
	FUNC1(payload, tc);
	FUNC2(payload, group);
}