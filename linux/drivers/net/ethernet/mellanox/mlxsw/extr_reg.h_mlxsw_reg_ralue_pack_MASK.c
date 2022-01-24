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
typedef  int /*<<< orphan*/  u16 ;
typedef  enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;
typedef  enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_RALUE_ENTRY_TYPE_ROUTE_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ralue ; 

__attribute__((used)) static inline void FUNC7(char *payload,
					enum mlxsw_reg_ralxx_protocol protocol,
					enum mlxsw_reg_ralue_op op,
					u16 virtual_router, u8 prefix_len)
{
	FUNC0(ralue, payload);
	FUNC5(payload, protocol);
	FUNC3(payload, op);
	FUNC6(payload, virtual_router);
	FUNC4(payload, prefix_len);
	FUNC2(payload,
				       MLXSW_REG_RALUE_ENTRY_TYPE_ROUTE_ENTRY);
	FUNC1(payload, prefix_len);
}