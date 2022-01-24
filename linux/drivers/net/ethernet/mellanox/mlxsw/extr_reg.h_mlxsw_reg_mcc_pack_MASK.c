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
typedef  enum mlxsw_reg_mcc_instruction { ____Placeholder_mlxsw_reg_mcc_instruction } mlxsw_reg_mcc_instruction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mcc ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(char *payload,
				      enum mlxsw_reg_mcc_instruction instr,
				      u16 component_index, u32 update_handle,
				      u32 component_size)
{
	FUNC0(mcc, payload);
	FUNC3(payload, instr);
	FUNC1(payload, component_index);
	FUNC4(payload, update_handle);
	FUNC2(payload, component_size);
}