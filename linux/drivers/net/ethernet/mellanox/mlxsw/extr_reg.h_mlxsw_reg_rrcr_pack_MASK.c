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
typedef  int /*<<< orphan*/  u16 ;
typedef  enum mlxsw_reg_rtar_key_type { ____Placeholder_mlxsw_reg_rtar_key_type } mlxsw_reg_rtar_key_type ;
typedef  enum mlxsw_reg_rrcr_op { ____Placeholder_mlxsw_reg_rrcr_op } mlxsw_reg_rrcr_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  rrcr ; 

__attribute__((used)) static inline void FUNC6(char *payload, enum mlxsw_reg_rrcr_op op,
				       u16 offset, u16 size,
				       enum mlxsw_reg_rtar_key_type table_id,
				       u16 dest_offset)
{
	FUNC0(rrcr, payload);
	FUNC3(payload, op);
	FUNC2(payload, offset);
	FUNC4(payload, size);
	FUNC5(payload, table_id);
	FUNC1(payload, dest_offset);
}