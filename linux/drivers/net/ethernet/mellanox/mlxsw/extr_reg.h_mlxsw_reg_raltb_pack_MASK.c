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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raltb ; 

__attribute__((used)) static inline void FUNC4(char *payload, u16 virtual_router,
					enum mlxsw_reg_ralxx_protocol protocol,
					u8 tree_id)
{
	FUNC0(raltb, payload);
	FUNC3(payload, virtual_router);
	FUNC1(payload, protocol);
	FUNC2(payload, tree_id);
}