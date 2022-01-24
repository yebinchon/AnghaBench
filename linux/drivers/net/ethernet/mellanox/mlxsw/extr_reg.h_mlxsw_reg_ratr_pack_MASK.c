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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  enum mlxsw_reg_ratr_type { ____Placeholder_mlxsw_reg_ratr_type } mlxsw_reg_ratr_type ;
typedef  enum mlxsw_reg_ratr_op { ____Placeholder_mlxsw_reg_ratr_op } mlxsw_reg_ratr_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  ratr ; 

__attribute__((used)) static inline void
FUNC7(char *payload,
		    enum mlxsw_reg_ratr_op op, bool valid,
		    enum mlxsw_reg_ratr_type type,
		    u32 adjacency_index, u16 egress_rif)
{
	FUNC0(ratr, payload);
	FUNC4(payload, op);
	FUNC6(payload, valid);
	FUNC5(payload, type);
	FUNC2(payload, adjacency_index);
	FUNC1(payload, adjacency_index >> 16);
	FUNC3(payload, egress_rif);
}