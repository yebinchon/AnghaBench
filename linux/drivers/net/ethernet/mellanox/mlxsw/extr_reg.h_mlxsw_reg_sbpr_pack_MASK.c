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
typedef  enum mlxsw_reg_sbxx_dir { ____Placeholder_mlxsw_reg_sbxx_dir } mlxsw_reg_sbxx_dir ;
typedef  enum mlxsw_reg_sbpr_mode { ____Placeholder_mlxsw_reg_sbpr_mode } mlxsw_reg_sbpr_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbpr ; 

__attribute__((used)) static inline void FUNC6(char *payload, u8 pool,
				       enum mlxsw_reg_sbxx_dir dir,
				       enum mlxsw_reg_sbpr_mode mode, u32 size,
				       bool infi_size)
{
	FUNC0(sbpr, payload);
	FUNC4(payload, pool);
	FUNC1(payload, dir);
	FUNC3(payload, mode);
	FUNC5(payload, size);
	FUNC2(payload, infi_size);
}