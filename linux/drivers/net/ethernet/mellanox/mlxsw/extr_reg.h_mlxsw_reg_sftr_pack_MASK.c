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
typedef  enum mlxsw_flood_table_type { ____Placeholder_mlxsw_flood_table_type } mlxsw_flood_table_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  sftr ; 

__attribute__((used)) static inline void FUNC8(char *payload,
				       unsigned int flood_table,
				       unsigned int index,
				       enum mlxsw_flood_table_type table_type,
				       unsigned int range, u8 port, bool set)
{
	FUNC0(sftr, payload);
	FUNC6(payload, 0);
	FUNC1(payload, flood_table);
	FUNC2(payload, index);
	FUNC7(payload, table_type);
	FUNC5(payload, range);
	FUNC4(payload, port, set);
	FUNC3(payload, port, 1);
}