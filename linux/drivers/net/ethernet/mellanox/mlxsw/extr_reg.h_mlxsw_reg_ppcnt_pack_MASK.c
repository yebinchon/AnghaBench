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
typedef  enum mlxsw_reg_ppcnt_grp { ____Placeholder_mlxsw_reg_ppcnt_grp } mlxsw_reg_ppcnt_grp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppcnt ; 

__attribute__((used)) static inline void FUNC7(char *payload, u8 local_port,
					enum mlxsw_reg_ppcnt_grp grp,
					u8 prio_tc)
{
	FUNC0(ppcnt, payload);
	FUNC6(payload, 0);
	FUNC3(payload, local_port);
	FUNC4(payload, 0);
	FUNC2(payload, grp);
	FUNC1(payload, 0);
	FUNC5(payload, prio_tc);
}