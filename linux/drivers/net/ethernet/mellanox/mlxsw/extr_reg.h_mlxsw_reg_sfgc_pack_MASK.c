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
typedef  enum mlxsw_reg_sfgc_type { ____Placeholder_mlxsw_reg_sfgc_type } mlxsw_reg_sfgc_type ;
typedef  enum mlxsw_reg_sfgc_bridge_type { ____Placeholder_mlxsw_reg_sfgc_bridge_type } mlxsw_reg_sfgc_bridge_type ;
typedef  enum mlxsw_flood_table_type { ____Placeholder_mlxsw_flood_table_type } mlxsw_flood_table_type ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_PORT_MID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  sfgc ; 

__attribute__((used)) static inline void
FUNC6(char *payload, enum mlxsw_reg_sfgc_type type,
		    enum mlxsw_reg_sfgc_bridge_type bridge_type,
		    enum mlxsw_flood_table_type table_type,
		    unsigned int flood_table)
{
	FUNC0(sfgc, payload);
	FUNC5(payload, type);
	FUNC1(payload, bridge_type);
	FUNC4(payload, table_type);
	FUNC2(payload, flood_table);
	FUNC3(payload, MLXSW_PORT_MID);
}