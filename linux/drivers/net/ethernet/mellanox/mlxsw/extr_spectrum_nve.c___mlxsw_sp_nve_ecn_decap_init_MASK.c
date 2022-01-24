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
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  INET_ECN_CE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_TNDEM_LEN ; 
 int /*<<< orphan*/  MLXSW_TRAP_ID_DECAP_ECN0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tndem ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp,
					 u8 inner_ecn, u8 outer_ecn)
{
	char tndem_pl[MLXSW_REG_TNDEM_LEN];
	bool trap_en, set_ce = false;
	u8 new_inner_ecn;

	trap_en = !!FUNC1(outer_ecn, inner_ecn, &set_ce);
	new_inner_ecn = set_ce ? INET_ECN_CE : inner_ecn;

	FUNC2(tndem_pl, outer_ecn, inner_ecn, new_inner_ecn,
			     trap_en, trap_en ? MLXSW_TRAP_ID_DECAP_ECN0 : 0);
	return FUNC3(mlxsw_sp->core, FUNC0(tndem), tndem_pl);
}