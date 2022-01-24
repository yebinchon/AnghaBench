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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  enum mlxsw_reg_ptce3_op { ____Placeholder_mlxsw_reg_ptce3_op } mlxsw_reg_ptce3_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  ptce3 ; 

__attribute__((used)) static inline void FUNC13(char *payload, bool valid,
					enum mlxsw_reg_ptce3_op op,
					u32 priority,
					const char *tcam_region_info,
					const char *key, u8 erp_id,
					u16 delta_start, u8 delta_mask,
					u8 delta_value, bool large_exists,
					u32 lkey_id, u32 action_pointer)
{
	FUNC0(ptce3, payload);
	FUNC12(payload, valid);
	FUNC9(payload, op);
	FUNC10(payload, priority);
	FUNC11(payload, tcam_region_info);
	FUNC6(payload, key);
	FUNC5(payload, erp_id);
	FUNC3(payload, delta_start);
	FUNC2(payload, delta_mask);
	FUNC4(payload, delta_value);
	FUNC8(payload, large_exists);
	FUNC7(payload, lkey_id);
	FUNC1(payload, action_pointer);
}