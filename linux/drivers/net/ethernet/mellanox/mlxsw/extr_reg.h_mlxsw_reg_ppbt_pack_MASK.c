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
typedef  enum mlxsw_reg_pxbt_op { ____Placeholder_mlxsw_reg_pxbt_op } mlxsw_reg_pxbt_op ;
typedef  enum mlxsw_reg_pxbt_e { ____Placeholder_mlxsw_reg_pxbt_e } mlxsw_reg_pxbt_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  ppbt ; 

__attribute__((used)) static inline void FUNC6(char *payload, enum mlxsw_reg_pxbt_e e,
				       enum mlxsw_reg_pxbt_op op,
				       u8 local_port, u16 acl_info)
{
	FUNC0(ppbt, payload);
	FUNC2(payload, e);
	FUNC5(payload, op);
	FUNC4(payload, local_port);
	FUNC3(payload, true);
	FUNC1(payload, acl_info);
}