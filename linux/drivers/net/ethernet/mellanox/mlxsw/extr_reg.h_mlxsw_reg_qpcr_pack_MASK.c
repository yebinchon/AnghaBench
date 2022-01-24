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
typedef  enum mlxsw_reg_qpcr_ir_units { ____Placeholder_mlxsw_reg_qpcr_ir_units } mlxsw_reg_qpcr_ir_units ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_QPCR_ACTION_DISCARD ; 
 int /*<<< orphan*/  MLXSW_REG_QPCR_G_GLOBAL ; 
 int /*<<< orphan*/  MLXSW_REG_QPCR_RATE_TYPE_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qpcr ; 

__attribute__((used)) static inline void FUNC9(char *payload, u16 pid,
				       enum mlxsw_reg_qpcr_ir_units ir_units,
				       bool bytes, u32 cir, u16 cbs)
{
	FUNC0(qpcr, payload);
	FUNC6(payload, pid);
	FUNC4(payload, MLXSW_REG_QPCR_G_GLOBAL);
	FUNC7(payload, MLXSW_REG_QPCR_RATE_TYPE_SINGLE);
	FUNC8(payload,
					  MLXSW_REG_QPCR_ACTION_DISCARD);
	FUNC3(payload, cir);
	FUNC5(payload, ir_units);
	FUNC1(payload, bytes);
	FUNC2(payload, cbs);
}