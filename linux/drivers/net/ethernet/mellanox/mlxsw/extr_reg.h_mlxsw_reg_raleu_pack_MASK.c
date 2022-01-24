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
typedef  enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raleu ; 

__attribute__((used)) static inline void FUNC7(char *payload,
					enum mlxsw_reg_ralxx_protocol protocol,
					u16 virtual_router,
					u32 adjacency_index, u16 ecmp_size,
					u32 new_adjacency_index,
					u16 new_ecmp_size)
{
	FUNC0(raleu, payload);
	FUNC5(payload, protocol);
	FUNC6(payload, virtual_router);
	FUNC1(payload, adjacency_index);
	FUNC2(payload, ecmp_size);
	FUNC3(payload, new_adjacency_index);
	FUNC4(payload, new_ecmp_size);
}