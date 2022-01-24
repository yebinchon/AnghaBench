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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbpm ; 

__attribute__((used)) static inline void FUNC7(char *payload, u8 local_port, u8 pool,
				       enum mlxsw_reg_sbxx_dir dir, bool clr,
				       u32 min_buff, u32 max_buff)
{
	FUNC0(sbpm, payload);
	FUNC3(payload, local_port);
	FUNC6(payload, pool);
	FUNC2(payload, dir);
	FUNC1(payload, clr);
	FUNC5(payload, min_buff);
	FUNC4(payload, max_buff);
}