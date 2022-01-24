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
typedef  enum mlxsw_reg_ptce2_op { ____Placeholder_mlxsw_reg_ptce2_op } mlxsw_reg_ptce2_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  ptce2 ; 

__attribute__((used)) static inline void FUNC6(char *payload, bool valid,
					enum mlxsw_reg_ptce2_op op,
					const char *tcam_region_info,
					u16 offset, u32 priority)
{
	FUNC0(ptce2, payload);
	FUNC5(payload, valid);
	FUNC2(payload, op);
	FUNC1(payload, offset);
	FUNC3(payload, priority);
	FUNC4(payload, tcam_region_info);
}